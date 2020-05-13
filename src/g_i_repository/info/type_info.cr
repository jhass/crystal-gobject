require "./base_info"

module GIRepository
  class TypeInfo < BaseInfo
    TAG_MAP = {
      TypeTag::VOID     => "Void",
      TypeTag::BOOLEAN  => "Bool",
      TypeTag::INT8     => "Int8",
      TypeTag::UINT8    => "UInt8",
      TypeTag::INT16    => "Int16",
      TypeTag::UINT16   => "UInt16",
      TypeTag::INT32    => "Int32",
      TypeTag::UINT32   => "UInt32",
      TypeTag::INT64    => "Int64",
      TypeTag::UINT64   => "UInt64",
      TypeTag::FLOAT    => "Float32",
      TypeTag::DOUBLE   => "Float64",
      TypeTag::GTYPE    => "UInt64",
      TypeTag::UTF8     => "UInt8",
      TypeTag::FILENAME => "UInt8",
      TypeTag::GLIST    => "Void*",
      TypeTag::GSLIST   => "Void*",
      TypeTag::GHASH    => "Void*",
      TypeTag::ERROR    => "LibGLib::Error*",
      TypeTag::UNICHAR  => "UInt8",
    }

    BLACKLIST = {"VaClosureMarshal", "DBusProxyClass", "DBusInterfaceSkeletonClass"}

    def tag
      GIRepository.type_info_get_tag(self)
    end

    def pointer?
      GIRepository.type_info_is_pointer(self)
    end

    def void?
      tag.void?
    end

    def interface
      BaseInfo.wrap(GIRepository.type_info_get_interface(self)).not_nil!
    end

    def array_type
      GIRepository.type_info_get_array_type(self)
    end

    def array_length
      GIRepository.type_info_get_array_length(self)
    end

    def array_fixed_size
      GIRepository.type_info_get_array_fixed_size(self)
    end

    def param_type(n = 0)
      BaseInfo.wrap(GIRepository.type_info_get_param_type(self, n)).as(TypeInfo)
    end

    def lib_definition
      base = case tag
             when .interface?
               interface = self.interface
               name = interface.name
               if interface.info_type.unresolved?
                 return "Void*"
               elsif name.nil? || BLACKLIST.includes?(name) || (name && 'a' <= name[0] <= 'z') # More weird stuff, also compiler could be smarter here
                 interface.is_a?(CallbackInfo) ? "-> Void" : "Void*"
               else
                 namespace = "Lib#{interface.namespace}::"
                 namespace = nil if namespace == self.namespace
                 "#{namespace}#{interface.name}"
               end
             when .array?
               case array_type
               when ArrayType::C
                 param = param_type.lib_definition
                 param += "[#{array_fixed_size}]" if array_fixed_size > 1
                 param
               else
                 "Void"
               end
             else
               TAG_MAP[tag]
             end
      base += "*" if pointer?
      base
    end

    def signal_lib_definition
      base = lib_definition
      if tag.interface?
        # In signal functions, structs are always pointers, even if their TypeInfo disagrees
        base += "*"
      end
      base
    end

    def gvalue_type
      "GObject::Type::" + case tag
      when .int32?
        # G_TYPE_INT is documented to represent gint which is documented as an alias to the
        # standard C int, which is platform dependent. However there's no fundamental
        # gtype defined for INT32 and all GIR metadata (such as g_value_set_int's) points
        # towards mapping INT32 to G_TYPE_INT being correct.
        "INT"
      when .uint32?
        # Basically same story as above
        "UINT"
      when .interface?
        interface = self.interface
        case interface
        when ObjectInfo, StructInfo, UnionInfo
          "OBJECT"
        when InterfaceInfo
          "INTERFACE"
        when EnumInfo
          "ENUM"
        else
          "INTERFACE"
        end
      when .ghash?
        "POINTER"
      else
        tag.to_s
      end
    end

    def wrapper_definition(libname = "", indent = "")
      case tag
      when .interface?
        interface.full_constant
      when .array?
        "::Enumerable(#{param_type.wrapper_definition(libname)})"
      when .void?
        pointer? ? "Void*" : "Nil"
      when .utf8?, .filename?
        "::String"
      else
        TAG_MAP[tag]
      end
    end

    def convert_to_crystal(variable)
      case tag
      when .interface?
        interface = self.interface
        case interface
        when ObjectInfo, StructInfo, UnionInfo, EnumInfo, FlagsInfo
          "#{interface.full_constant}.new(#{variable})"
        when InterfaceInfo
          "#{interface.full_constant}::Wrapper.new(#{variable})"
        else
          variable
        end
      when .array?
        case array_type
        when ArrayType::C
          item = "__item"
          "GObject::PointerIterator.new(#{variable}) {|#{item}| #{param_type.convert_to_crystal("#{item}")} }"
        else
          variable
        end
      when .utf8?, .filename?
        %((raise "Expected string but got null" unless #{variable}; ::String.new(#{variable})))
      when .glist?
        "GLib::ListIterator(#{param_type.wrapper_definition}, #{param_type.lib_definition}*).new(GLib::SList.new(#{variable}.as(LibGLib::List*)))"
      when .gslist?
        "GLib::SListIterator(#{param_type.wrapper_definition}, #{param_type.lib_definition}*).new(GLib::SList.new(#{variable}.as(LibGLib::SList*)))"
      else
        variable
      end
    end

    def convert_from_crystal(variable)
      case tag
      when .interface?
        interface = self.interface
        if interface.namespace == "GObject" && interface.name == "Value"
          "#{variable}.to_gvalue.to_unsafe#{".value" unless pointer?}"
        elsif interface.is_a?(ObjectInfo) || interface.is_a?(InterfaceInfo)
          converter = interface.to_unsafe_name if interface.responds_to?(:to_unsafe_name)
          pointer? && converter ? "#{variable}.#{converter}" : variable
        else
          pointer? ? "#{variable}.to_unsafe.as(Lib#{interface.full_constant}*)" : variable
        end
      when .array?
        if param_type.tag.uint8? # Assume UInt8* (gchar*) is a string for now
          variable
        else
          "(__#{variable}_ary = #{variable}.map { |__item| #{param_type.convert_from_crystal("__item")} }.to_a).to_unsafe"
        end
      when .glist?,
           .gslist?,
           .ghash?,
           .error?,
           .boolean?,
           .void?
        variable
      when .utf8?, .filename?
        "#{variable}.to_unsafe"
      else
        if pointer?
          variable
        else
          "#{TAG_MAP[tag]}.new(#{variable})"
        end
      end
    end

    def unwrap_gvalue(variable)
      case tag
      when .interface?
        interface = self.interface
        case interface
        when ObjectInfo, StructInfo, UnionInfo
          "#{interface.full_constant}.cast(#{variable}.object)"
        when InterfaceInfo
          "#{interface.full_constant}::Wrapper.cast(#{variable}.instance)"
        when FlagsInfo
          "#{interface.full_constant}.new(#{interface.type}.new(#{variable}.flags))"
        when EnumInfo
          "#{interface.full_constant}.new(#{interface.type}.new(#{variable}.enum))"
        else
          "#{variable}"
        end
      when .boolean?
        "#{variable}.boolean"
      when .utf8?
        "#{variable}.string"
      when .int32?
        "#{variable}.int"
      when .uint32?
        "#{variable}.uint"
      when .float?
        "#{variable}.float"
      when .double?
        "#{variable}.double"
      when .ghash?
        "GLib::HashTable.new(#{variable}.pointer.as(LibGLib::HashTable*))"
      else
        variable
      end
    end

    Dumper.def do
      dumper.puts "* tag = #{tag}"
      dumper.puts "* pointer = #{pointer?}"
      dumper.puts "* array_type = #{array_type}" if tag.array?
      dumper.puts "* array_length = #{array_length}" if tag.array?
      dumper.puts "* array_fixed_size = #{array_fixed_size}" if tag.array?

      Dumper.dump_child interface if tag.interface?
      Dumper.dump_child param_type if tag.array?
    end
  end
end
