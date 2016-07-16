require "./param_spec"

module GObject
  class ParamSpecOverride < ParamSpec
    @g_object_param_spec_override : LibGObject::ParamSpecOverride*?
    def initialize(@g_object_param_spec_override : LibGObject::ParamSpecOverride*)
    end

    def to_unsafe
      @g_object_param_spec_override.not_nil!.as(Void*)
    end

  end
end

