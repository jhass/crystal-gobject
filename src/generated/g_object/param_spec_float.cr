require "./param_spec"

module GObject
  class ParamSpecFloat < ParamSpec
    @g_object_param_spec_float : LibGObject::ParamSpecFloat*?
    def initialize(@g_object_param_spec_float : LibGObject::ParamSpecFloat*)
    end

    def to_unsafe
      @g_object_param_spec_float.not_nil!.as(Void*)
    end

  end
end

