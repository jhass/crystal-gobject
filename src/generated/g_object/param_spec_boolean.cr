require "./param_spec"

module GObject
  class ParamSpecBoolean < ParamSpec
    @g_object_param_spec_boolean : LibGObject::ParamSpecBoolean*?
    def initialize(@g_object_param_spec_boolean : LibGObject::ParamSpecBoolean*)
    end

    def to_unsafe
      @g_object_param_spec_boolean.not_nil!.as(Void*)
    end

  end
end

