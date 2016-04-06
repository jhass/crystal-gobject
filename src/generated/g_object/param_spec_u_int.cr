require "./param_spec"

module GObject
  class ParamSpecUInt < ParamSpec
    def initialize(@g_object_param_spec_u_int)
    end

    def to_unsafe
      @g_object_param_spec_u_int.not_nil!
    end

  end
end

