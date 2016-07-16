require "./param_spec"

module GObject
  class ParamSpecUInt < ParamSpec
    @g_object_param_spec_u_int : LibGObject::ParamSpecUInt*?
    def initialize(@g_object_param_spec_u_int : LibGObject::ParamSpecUInt*)
    end

    def to_unsafe
      @g_object_param_spec_u_int.not_nil!.as(Void*)
    end

  end
end

