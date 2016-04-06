require "./param_spec"

module GObject
  class ParamSpecULong < ParamSpec
    def initialize(@g_object_param_spec_u_long)
    end

    def to_unsafe
      @g_object_param_spec_u_long.not_nil!
    end

  end
end

