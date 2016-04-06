require "./param_spec"

module GObject
  class ParamSpecFlags < ParamSpec
    def initialize(@g_object_param_spec_flags)
    end

    def to_unsafe
      @g_object_param_spec_flags.not_nil!
    end

  end
end

