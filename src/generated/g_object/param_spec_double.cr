require "./param_spec"

module GObject
  class ParamSpecDouble < ParamSpec
    @g_object_param_spec_double : LibGObject::ParamSpecDouble*?
    def initialize(@g_object_param_spec_double : LibGObject::ParamSpecDouble*)
    end

    def to_unsafe
      @g_object_param_spec_double.not_nil!.as(Void*)
    end

  end
end

