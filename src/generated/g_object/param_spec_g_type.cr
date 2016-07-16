require "./param_spec"

module GObject
  class ParamSpecGType < ParamSpec
    @g_object_param_spec_g_type : LibGObject::ParamSpecGType*?
    def initialize(@g_object_param_spec_g_type : LibGObject::ParamSpecGType*)
    end

    def to_unsafe
      @g_object_param_spec_g_type.not_nil!.as(Void*)
    end

  end
end

