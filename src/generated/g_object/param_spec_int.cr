require "./param_spec"

module GObject
  class ParamSpecInt < ParamSpec
    @g_object_param_spec_int : LibGObject::ParamSpecInt*?
    def initialize(@g_object_param_spec_int : LibGObject::ParamSpecInt*)
    end

    def to_unsafe
      @g_object_param_spec_int.not_nil!.as(Void*)
    end

  end
end

