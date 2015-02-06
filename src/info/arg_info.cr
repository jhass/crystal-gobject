require "./base_info"

class ArgInfo < BaseInfo
  def out?
    LibGIRepository.arg_info_get_direction(self) == LibGIRepository::Direction::OUT
  end

  def type
    type = BaseInfo.wrap LibGIRepository.arg_info_get_type(self)
    type.is_a?(TypeInfo) ? type : raise "Bug: didn't get a TypeInfo"
  end

  def definition
    String.build do |io|
      io << name << " : " << type.definition
      io << '*' if out?
    end
  end
end
