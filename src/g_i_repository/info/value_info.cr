require "./base_info"

module GIRepository
  class ValueInfo < BaseInfo
    def value
      GIRepository.value_info_get_value(self)
    end

    def lib_definition
      name = self.name
      return unless name

      name = name.upcase
      name = "# #{name}"unless 'A' <= name[0] <= 'Z'
      "  #{name} = #{value}"
    end

    Dumper.def do
      dumper.puts "* value = #{value}"
    end
  end
end
