require "./param_spec"

module GObject
  class ParamSpecVariant < ParamSpec
    @g_object_param_spec_variant : LibGObject::ParamSpecVariant*?
    def initialize(@g_object_param_spec_variant : LibGObject::ParamSpecVariant*)
    end

    def to_unsafe
      @g_object_param_spec_variant.not_nil!.as(Void*)
    end

  end
end

