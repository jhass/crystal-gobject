require "./param_spec"

module GObject
  class ParamSpecBoxed < ParamSpec
    @g_object_param_spec_boxed : LibGObject::ParamSpecBoxed*?
    def initialize(@g_object_param_spec_boxed : LibGObject::ParamSpecBoxed*)
    end

    def to_unsafe
      @g_object_param_spec_boxed.not_nil!
    end

  end
end

