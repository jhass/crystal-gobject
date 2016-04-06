require "./param_spec"

module GObject
  class ParamSpecDouble < ParamSpec
    def initialize(@g_object_param_spec_double)
    end

    def to_unsafe
      @g_object_param_spec_double.not_nil!
    end

  end
end

