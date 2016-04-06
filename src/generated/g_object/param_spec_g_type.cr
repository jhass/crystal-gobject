require "./param_spec"

module GObject
  class ParamSpecGType < ParamSpec
    def initialize(@g_object_param_spec_g_type)
    end

    def to_unsafe
      @g_object_param_spec_g_type.not_nil!
    end

  end
end

