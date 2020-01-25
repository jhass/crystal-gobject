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
      BaseInfo.wrap GIRepository.type_info_get_interface(self)
    end

    def array_type
      GIRepository.type_info_get_array_type(self)
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
                 type = "#{namespace}#{interface.name}"
                 case interface
                 when ObjectInfo
                   type = "#{type}*" unless pointer?
                 end
                 type
               end
             when .array?
               case array_type
               when ArrayType::C
                 param_type.lib_definition
               else
                 "Void"
               end
             else
               TAG_MAP[tag]
             end
      base += "*" if pointer?
      base
    end

    def wrapper_definition(libname = "", indent = "")
      case tag
      when .interface?
        interface.full_constant
      when .array?
        "Array(#{param_type.wrapper_definition(libname)})"
      when .zero_none?
        "Void*"
      when .utf8?, .filename?
        "String"
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
        else
          variable
        end
      when .array?
        case array_type
        when ArrayType::C
          item = "__item"
          "PointerIterator.new(#{variable}) {|#{item}| #{param_type.convert_to_crystal("#{item}")} }"
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
        pointer? ? "#{variable}.to_unsafe.as(Lib#{interface.full_constant}*)" : variable
      when .array?,
           .glist?,
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

    def wrap_in_gvalue(variable, value)
      case tag
      when .interface?
        interface = self.interface
        case interface
        when ObjectInfo, StructInfo, UnionInfo
          "#{variable}.object = #{value}"
        when EnumInfo
          "#{variable}.enum = #{value}"
        end
      when .boolean?
        "#{variable}.boolean = #{value}"
      when .utf8?
        "#{variable}.string = #{value}"
      end
    end

    def unwrap_gvalue(variable)
      case tag
      when .interface?
        interface = self.interface
        case interface
        when ObjectInfo, StructInfo, UnionInfo
          "#{interface.full_constant}.cast(#{variable}.object)"
        when EnumInfo
          "#{variable}.enum"
        else
          "#{variable}"
        end
      when .boolean?
        "#{variable}.boolean"
      when .utf8?
        "#{variable}.string"
      else
        variable
      end
    end

    Dumper.def do
      dumper.puts "* tag = #{tag}"
      dumper.puts "* pointer = #{pointer?}"
      dumper.puts "* array_type = #{array_type}" if tag.array?

      Dumper.dump_child interface if tag.interface?
      Dumper.dump_child param_type if tag.array?
    end
  end
end
