require "./base_info"

class FieldInfo < BaseInfo
  KEYWORDS = {"end"}

  def type
    type = BaseInfo.wrap LibGIRepository.field_info_get_type(self)
    type.is_a?(TypeInfo) ? type : raise "Bug: didn't get a TypeInfo"
  end

  def name
    name = super
    name += '_' if KEYWORDS.includes? name
    name
  end

  def definition
    "  #{name} : #{type.definition}"
  end
end
