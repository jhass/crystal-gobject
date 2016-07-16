require "./param_spec"

module GObject
  class ParamSpecUnichar < ParamSpec
    @g_object_param_spec_unichar : LibGObject::ParamSpecUnichar*?
    def initialize(@g_object_param_spec_unichar : LibGObject::ParamSpecUnichar*)
    end

    def to_unsafe
      @g_object_param_spec_unichar.not_nil!.as(Void*)
    end

  end
end

