require "./base_info"

class TypeInfo < BaseInfo
  TAG_MAP = {
    LibGIRepository::TypeTag::VOID     => "Void"
    LibGIRepository::TypeTag::BOOLEAN  => "Bool"
    LibGIRepository::TypeTag::INT8     => "Int8"
    LibGIRepository::TypeTag::UINT8    => "UInt8"
    LibGIRepository::TypeTag::INT16    => "Int16"
    LibGIRepository::TypeTag::UINT16   => "UInt16"
    LibGIRepository::TypeTag::INT32    => "Int32"
    LibGIRepository::TypeTag::UINT32   => "UInt32"
    LibGIRepository::TypeTag::INT64    => "Int64"
    LibGIRepository::TypeTag::UINT64   => "UInt64"
    LibGIRepository::TypeTag::FLOAT    => "Float32"
    LibGIRepository::TypeTag::DOUBLE   => "Float64"
    LibGIRepository::TypeTag::GTYPE    => "UInt64"
    LibGIRepository::TypeTag::UTF8     => "UInt8"
    LibGIRepository::TypeTag::FILENAME => "UInt8"
    LibGIRepository::TypeTag::GLIST    => "Void*"
    LibGIRepository::TypeTag::GSLIST   => "Void*"
    LibGIRepository::TypeTag::GHASH    => "Void*"
    LibGIRepository::TypeTag::ERROR    => "LibGLib::Error*"
    LibGIRepository::TypeTag::UNICHAR  => "UInt8"
  }

  BLACKLIST = {"VaClosureMarshal"}

  def tag
    LibGIRepository.type_info_get_tag(self)
  end

  def pointer?
    LibGIRepository.type_info_is_pointer(self)
  end

  def definition
    base = case tag
      when LibGIRepository::TypeTag::INTERFACE # Now this is everything but an interface :(
        interface = BaseInfo.wrap LibGIRepository.type_info_get_interface(self)
        case interface
        when CallbackInfo # Weird stuff, just Void* it for the moment
          "Void*"
        else
          if BLACKLIST.includes? interface.name # More weird stuff
            "Void*"
          else
            namespace = "Lib#{interface.namespace}::"
            namespace = nil if namespace == self.namespace
            "#{namespace}#{interface.name}"
          end
        end
      when LibGIRepository::TypeTag::ARRAY
        array = LibGIRepository.type_info_get_array_type(self)
        case array
        when LibGIRepository::ArrayType::C
          type = BaseInfo.wrap LibGIRepository.type_info_get_param_type(self, 0)
          type.is_a?(TypeInfo) ? type.definition  : raise "Bug: didn't get a TypeInfo"
        else
          "Void*"
        end
      else
        TAG_MAP[tag]
      end
    base += "*" if pointer?
    base
  end
end
