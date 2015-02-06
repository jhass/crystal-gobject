require "./base_info"

class TypeInfo < BaseInfo
  TAG_MAP = Hash(LibGIRepository::TypeTag, String).new # Hash literal bug?
  TAG_MAP[LibGIRepository::TypeTag::VOID]      = "Void"
  TAG_MAP[LibGIRepository::TypeTag::BOOLEAN]   = "Bool"
  TAG_MAP[LibGIRepository::TypeTag::INT8]      = "Int8"
  TAG_MAP[LibGIRepository::TypeTag::UINT8]     = "UInt8"
  TAG_MAP[LibGIRepository::TypeTag::INT16]     = "Int16"
  TAG_MAP[LibGIRepository::TypeTag::UINT16]    = "UInt16"
  TAG_MAP[LibGIRepository::TypeTag::INT32]     = "Int32"
  TAG_MAP[LibGIRepository::TypeTag::UINT32]    = "UInt32"
  TAG_MAP[LibGIRepository::TypeTag::INT64]     = "Int64"
  TAG_MAP[LibGIRepository::TypeTag::UINT64]    = "UInt64"
  TAG_MAP[LibGIRepository::TypeTag::FLOAT]     = "Float32"
  TAG_MAP[LibGIRepository::TypeTag::DOUBLE]    = "Float64"
  TAG_MAP[LibGIRepository::TypeTag::GTYPE]     = "UInt64"
  TAG_MAP[LibGIRepository::TypeTag::UTF8]      = "UInt8"
  TAG_MAP[LibGIRepository::TypeTag::FILENAME]  = "UInt8"
  TAG_MAP[LibGIRepository::TypeTag::GLIST]     = "Void*"
  TAG_MAP[LibGIRepository::TypeTag::GSLIST]    = "Void*"
  TAG_MAP[LibGIRepository::TypeTag::GHASH]     = "Void*"
  TAG_MAP[LibGIRepository::TypeTag::ERROR]     = "LibGLib::Error*"
  TAG_MAP[LibGIRepository::TypeTag::UNICHAR]   = "UInt8"

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
