require "./param_spec"

module GObject
  class ParamSpecFloat < ParamSpec
    def initialize(@g_object_param_spec_float)
    end

    def to_unsafe
      @g_object_param_spec_float.not_nil!
    end

  end
end

