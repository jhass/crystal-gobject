require "./base_info"

module GICallableInfo
  class SelfArgInfo
    def initialize @container
    end

    def definition
      "this : #{@container.name}*"
    end
  end

  class ErrorArgInfo
    def definition
      "error : LibGLib::Error**"
    end
  end

  def method?
    LibGIRepository.callable_info_is_method(self)
  end

  def throws?
    LibGIRepository.callable_info_can_throw_gerror(self)
  end

  each_converted callable_info, arg, ArgInfo

  def args
    args = [] of ArgInfo|SelfArgInfo|ErrorArgInfo
    args << SelfArgInfo.new(container) if method?
    each_arg do |arg|
      args << arg
    end
    args << ErrorArgInfo.new if throws?
    args
  end

  def return_type
    type = BaseInfo.wrap LibGIRepository.callable_info_get_return_type(self)
    type.is_a?(TypeInfo) ? type : raise "Bug: didn't get a TypeInfo"
  end
end
