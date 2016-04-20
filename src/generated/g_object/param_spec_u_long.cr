require "./param_spec"

module GObject
  class ParamSpecULong < ParamSpec
    @g_object_param_spec_u_long : LibGObject::ParamSpecULong*?
    def initialize(@g_object_param_spec_u_long : LibGObject::ParamSpecULong*)
    end

    def to_unsafe
      @g_object_param_spec_u_long.not_nil!
    end

  end
end

