require "./param_spec"

module GObject
  class ParamSpecVariant < ParamSpec
    def initialize(@g_object_param_spec_variant)
    end

    def to_unsafe
      @g_object_param_spec_variant.not_nil!
    end

  end
end

