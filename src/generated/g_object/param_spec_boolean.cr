require "./param_spec"

module GObject
  class ParamSpecBoolean < ParamSpec
    def initialize(@g_object_param_spec_boolean)
    end

    def to_unsafe
      @g_object_param_spec_boolean.not_nil!
    end

  end
end

