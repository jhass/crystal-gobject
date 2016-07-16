require "./param_spec"

module GObject
  class ParamSpecPointer < ParamSpec
    @g_object_param_spec_pointer : LibGObject::ParamSpecPointer*?
    def initialize(@g_object_param_spec_pointer : LibGObject::ParamSpecPointer*)
    end

    def to_unsafe
      @g_object_param_spec_pointer.not_nil!.as(Void*)
    end

  end
end

