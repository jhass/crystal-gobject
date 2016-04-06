require "./param_spec"

module GObject
  class ParamSpecInt < ParamSpec
    def initialize(@g_object_param_spec_int)
    end

    def to_unsafe
      @g_object_param_spec_int.not_nil!
    end

  end
end

