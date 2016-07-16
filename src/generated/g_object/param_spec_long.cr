require "./param_spec"

module GObject
  class ParamSpecLong < ParamSpec
    @g_object_param_spec_long : LibGObject::ParamSpecLong*?
    def initialize(@g_object_param_spec_long : LibGObject::ParamSpecLong*)
    end

    def to_unsafe
      @g_object_param_spec_long.not_nil!.as(Void*)
    end

  end
end

