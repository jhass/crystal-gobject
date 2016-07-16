require "./param_spec"

module GObject
  class ParamSpecEnum < ParamSpec
    @g_object_param_spec_enum : LibGObject::ParamSpecEnum*?
    def initialize(@g_object_param_spec_enum : LibGObject::ParamSpecEnum*)
    end

    def to_unsafe
      @g_object_param_spec_enum.not_nil!.as(Void*)
    end

  end
end

