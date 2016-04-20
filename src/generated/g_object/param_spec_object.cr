require "./param_spec"

module GObject
  class ParamSpecObject < ParamSpec
    @g_object_param_spec_object : LibGObject::ParamSpecObject*?
    def initialize(@g_object_param_spec_object : LibGObject::ParamSpecObject*)
    end

    def to_unsafe
      @g_object_param_spec_object.not_nil!
    end

  end
end

