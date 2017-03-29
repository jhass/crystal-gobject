require "./param_spec"

module GObject
  class ParamSpecString < ParamSpec
    @g_object_param_spec_string : LibGObject::ParamSpecString*?
    def initialize(@g_object_param_spec_string : LibGObject::ParamSpecString*)
    end

    def to_unsafe
      @g_object_param_spec_string.not_nil!
    end

  end
end

