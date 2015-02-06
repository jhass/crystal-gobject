require "./base_info"

class ValueInfo < BaseInfo
  def value
    LibGIRepository.value_info_get_value(self)
  end

  def definition
    name = self.name.upcase
    name = "# #{name}"unless 'A' <= name[0] <= 'Z'
    "  #{name} = #{value}"
  end
end
