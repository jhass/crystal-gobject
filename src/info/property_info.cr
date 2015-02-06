require "./base_info"

class PropertyInfo < BaseInfo
  def type
    type = BaseInfo.wrap LibGIRepository.property_info_get_type(self)
    type.is_a?(TypeInfo) ? type : raise "Bug: didn't get a TypeInfo"
  end

  def definition
    "  # Property #{name} : #{type.definition}"
  end
end
