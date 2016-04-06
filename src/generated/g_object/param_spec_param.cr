require "./param_spec"

module GObject
  class ParamSpecParam < ParamSpec
    def initialize(@g_object_param_spec_param)
    end

    def to_unsafe
      @g_object_param_spec_param.not_nil!
    end

  end
end

