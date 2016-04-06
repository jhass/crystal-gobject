require "./base_info"

module GIRepository
  class TypeInfo < BaseInfo
    TAG_MAP = {
      LibGIRepository::TypeTag::VOID     => "Void",
      LibGIRepository::TypeTag::BOOLEAN  => "Bool",
      LibGIRepository::TypeTag::INT8     => "Int8",
      LibGIRepository::TypeTag::UINT8    => "UInt8",
      LibGIRepository::TypeTag::INT16    => "Int16",
      LibGIRepository::TypeTag::UINT16   => "UInt16",
      LibGIRepository::TypeTag::INT32    => "Int32",
      LibGIRepository::TypeTag::UINT32   => "UInt32",
      LibGIRepository::TypeTag::INT64    => "Int64",
      LibGIRepository::TypeTag::UINT64   => "UInt64",
      LibGIRepository::TypeTag::FLOAT    => "Float32",
      LibGIRepository::TypeTag::DOUBLE   => "Float64",
      LibGIRepository::TypeTag::GTYPE    => "UInt64",
      LibGIRepository::TypeTag::UTF8     => "UInt8",
      LibGIRepository::TypeTag::FILENAME => "UInt8",
      LibGIRepository::TypeTag::GLIST    => "Void*",
      LibGIRepository::TypeTag::GSLIST   => "Void*",
      LibGIRepository::TypeTag::GHASH    => "Void*",
      LibGIRepository::TypeTag::ERROR    => "LibGLib::Error*",
      LibGIRepository::TypeTag::UNICHAR  => "UInt8"
    }

    BLACKLIST = {"VaClosureMarshal"}

    def tag
      LibGIRepository.type_info_get_tag(self)
    end

    def pointer?
      LibGIRepository.type_info_is_pointer(self)
    end

    def interface
      BaseInfo.wrap BaseInfo.new LibGIRepository.type_info_get_interface(self)
    end

    def array_type
      LibGIRepository.type_info_get_array_type(self)
    end

    def lib_definition
      base = case tag
        when LibGIRepository::TypeTag::INTERFACE
          interface = interface
          if BLACKLIST.includes?(interface.name) || 'a' <= interface.name[0] <= 'z' # More weird stuff
            interface.is_a?(CallbackInfo) ? "-> Void" : "Void*"
          else
            namespace = "Lib#{interface.namespace}::"
            namespace = nil if namespace == self.namespace
            "#{namespace}#{interface.name}"
          end
        when LibGIRepository::TypeTag::ARRAY
          case array_type
          when LibGIRepository::ArrayType::C
            type = TypeInfo.new LibGIRepository.type_info_get_param_type(self, 0)
            type.lib_definition
          else
            "Void*"
          end
        else
          TAG_MAP[tag]
        end
      base += "*" if pointer?
      base
    end

    def wrapper_definition(libname, ident="")
      case tag
      when LibGIRepository::TypeTag::INTERFACE
        interface.full_constant
      when LibGIRepository::TypeTag::ARRAY
        type = TypeInfo.new LibGIRepository.type_info_get_param_type(self, 0)
        "Array(#{type.wrapper_definition(libname)})"
      when LibGIRepository::TypeTag::ZERO_NONE
        "Void*"
      else
        TAG_MAP[tag]
      end
    end

    def convert_to_crystal(variable)
      case tag
      when LibGIRepository::TypeTag::INTERFACE
        interface = interface
        case interface
        when ObjectInfo, StructInfo
          "#{interface.full_constant}.new(#{variable})"
        else
          variable
        end
      when LibGIRepository::TypeTag::ARRAY
        case array_type
        when LibGIRepository::ArrayType::C
          type = TypeInfo.new LibGIRepository.type_info_get_param_type(self, 0)
          item = "__item_#{rand(100)}"
          "PointerIterator.new(#{variable}) {|#{item}| #{type.convert_to_crystal("#{item}")} }"
        else
          variable
        end
      when LibGIRepository::TypeTag::UTF8, LibGIRepository::TypeTag::FILENAME
        %((raise "Expected string but got null" unless #{variable}; String.new(#{variable})))
      else
        variable
      end
    end

    def convert_from_crystal(variable)
      case tag
      when LibGIRepository::TypeTag::INTERFACE
        pointer? ? "(#{variable}.to_unsafe as Lib#{interface.full_constant}*)" : variable
      when LibGIRepository::TypeTag::ARRAY,
           LibGIRepository::TypeTag::UTF8,
           LibGIRepository::TypeTag::GLIST,
           LibGIRepository::TypeTag::GSLIST,
           LibGIRepository::TypeTag::GHASH,
           LibGIRepository::TypeTag::ERROR,
           LibGIRepository::TypeTag::BOOLEAN,
           LibGIRepository::TypeTag::VOID
        variable
      else
        if pointer?
          variable
        else
          "#{TAG_MAP[tag]}.new(#{variable})"
        end
      end
    end
  end
end
