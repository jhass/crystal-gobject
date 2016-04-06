require "./param_spec"

module GObject
  class ParamSpecOverride < ParamSpec
    def initialize(@g_object_param_spec_override)
    end

    def to_unsafe
      @g_object_param_spec_override.not_nil!
    end

  end
end

