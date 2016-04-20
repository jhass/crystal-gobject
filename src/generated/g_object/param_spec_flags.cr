require "./param_spec"

module GObject
  class ParamSpecFlags < ParamSpec
    @g_object_param_spec_flags : LibGObject::ParamSpecFlags*?
    def initialize(@g_object_param_spec_flags : LibGObject::ParamSpecFlags*)
    end

    def to_unsafe
      @g_object_param_spec_flags.not_nil!
    end

  end
end

