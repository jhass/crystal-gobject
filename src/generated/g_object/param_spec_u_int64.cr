require "./param_spec"

module GObject
  class ParamSpecUInt64 < ParamSpec
    @g_object_param_spec_u_int64 : LibGObject::ParamSpecUInt64*?
    def initialize(@g_object_param_spec_u_int64 : LibGObject::ParamSpecUInt64*)
    end

    def to_unsafe
      @g_object_param_spec_u_int64.not_nil!
    end

  end
end

