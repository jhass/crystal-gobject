require "./param_spec"

module GObject
  class ParamSpecString < ParamSpec
    def initialize(@g_object_param_spec_string)
    end

    def to_unsafe
      @g_object_param_spec_string.not_nil!
    end

  end
end

