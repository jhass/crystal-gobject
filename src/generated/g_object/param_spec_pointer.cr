require "./param_spec"

module GObject
  class ParamSpecPointer < ParamSpec
    def initialize(@g_object_param_spec_pointer)
    end

    def to_unsafe
      @g_object_param_spec_pointer.not_nil!
    end

  end
end

