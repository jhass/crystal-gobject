require "./param_spec"

module GObject
  class ParamSpecChar < ParamSpec
    @g_object_param_spec_char : LibGObject::ParamSpecChar*?
    def initialize(@g_object_param_spec_char : LibGObject::ParamSpecChar*)
    end

    def to_unsafe
      @g_object_param_spec_char.not_nil!.as(Void*)
    end

  end
end

