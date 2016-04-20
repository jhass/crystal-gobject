require "./param_spec"

module GObject
  class ParamSpecUChar < ParamSpec
    @g_object_param_spec_u_char : LibGObject::ParamSpecUChar*?
    def initialize(@g_object_param_spec_u_char : LibGObject::ParamSpecUChar*)
    end

    def to_unsafe
      @g_object_param_spec_u_char.not_nil!
    end

  end
end

