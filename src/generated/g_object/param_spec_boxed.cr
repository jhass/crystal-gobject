require "./param_spec"

module GObject
  class ParamSpecBoxed < ParamSpec
    def initialize(@g_object_param_spec_boxed)
    end

    def to_unsafe
      @g_object_param_spec_boxed.not_nil!
    end

  end
end

