require "./base_info"

module GIRepository
  class ValueInfo < BaseInfo
    def value
      LibGIRepository.value_info_get_value(self)
    end

    def lib_definition
      name = self.name.upcase
      name = "# #{name}"unless 'A' <= name[0] <= 'Z'
      "  #{name} = #{value}"
    end
  end
end
