require "./param_spec"

module GObject
  class ParamSpecLong < ParamSpec
    def initialize(@g_object_param_spec_long)
    end

    def to_unsafe
      @g_object_param_spec_long.not_nil!
    end

  end
end

