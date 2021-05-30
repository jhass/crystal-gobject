require "./base_info"

module GIRepository
  class FieldInfo < BaseInfo
    KEYWORDS = ArgInfo::KEYWORDS

    def type
      BaseInfo.wrap(GIRepository.field_info_get_type(self)).as(TypeInfo)
    end

    def name(keyword_safe = true)
      name = super()
      if name && name[0].uppercase?
        normalized_name = "#{name[0].downcase}#{name[1..-1]}"
        neighbour_fields =  case container = self.container
          when ObjectInfo, StructInfo, UnionInfo
            container.fields
          else
            nil
          end
        if neighbour_fields && neighbour_fields.any? &.raw_name.==(normalized_name)
          name = "_#{name}"
        else
          name = normalized_name
        end
      end
      name = "_#{name}" if keyword_safe && KEYWORDS.includes? name if name
      name.not_nil!
    end

    def raw_name
      ptr = LibGIRepository.base_info_get_name(self)
      String.new(ptr) if ptr
    end

    def wrapper_name
      name = name(false)
      name = "_#{name}" if name == "initialize" || name == "finalize"
      name
    end

    def flags
      GIRepository.field_info_get_flags(self)
    end

    def readable?
      flags.readable?
    end

    def writable?
      flags.writable?
    end

    def size
      GIRepository.field_info_get_size(self)
    end

    def offset
      GIRepository.field_info_get_offset(self)
    end

    def lib_definition(builder)
      builder.field_binding name, type.lib_definition(builder)
    end

    Dumper.def do
      dumper.puts "* flags = #{flags}"
      dumper.puts "* size = #{size}"
      dumper.puts "* offset = #{offset}"
      Dumper.dump_child type
    end
  end
end
