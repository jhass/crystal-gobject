require "./base_info"

module GIRepository
  class FieldInfo < BaseInfo
    KEYWORDS = {"end", "next"}

    def type
      BaseInfo.wrap(GIRepository.field_info_get_type(self)).as(TypeInfo)
    end

    def name(keyword_safe = true)
      name = super()
      name = "_#{name}" if name[0].uppercase? if name
      name += '_' if keyword_safe && KEYWORDS.includes? name if name
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

    def lib_definition
      "  #{name} : #{type.lib_definition}"
    end

    Dumper.def do
      dumper.puts "* flags = #{flags}"
      dumper.puts "* size = #{size}"
      dumper.puts "* offset = #{offset}"
      Dumper.dump_child type
    end
  end
end
