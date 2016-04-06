require "./param_spec"

module GObject
  class ParamSpecInt64 < ParamSpec
    def initialize(@g_object_param_spec_int64)
    end

    def to_unsafe
      @g_object_param_spec_int64.not_nil!
    end

  end
end

