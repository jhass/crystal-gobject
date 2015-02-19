require "./base_info"

module GIRepository
  class FieldInfo < BaseInfo
    KEYWORDS = {"end"}

    def type
      TypeInfo.new LibGIRepository.field_info_get_type(self)
    end

    def name
      name = super
      name += '_' if KEYWORDS.includes? name
      name
    end

    def lib_definition
      "  #{name} : #{type.lib_definition}"
    end
  end
end
