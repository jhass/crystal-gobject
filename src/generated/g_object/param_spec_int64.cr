require "./param_spec"

module GObject
  class ParamSpecInt64 < ParamSpec
    @g_object_param_spec_int64 : LibGObject::ParamSpecInt64*?
    def initialize(@g_object_param_spec_int64 : LibGObject::ParamSpecInt64*)
    end

    def to_unsafe
      @g_object_param_spec_int64.not_nil!.as(Void*)
    end

  end
end

