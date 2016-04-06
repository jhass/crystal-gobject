require "./param_spec"

module GObject
  class ParamSpecEnum < ParamSpec
    def initialize(@g_object_param_spec_enum)
    end

    def to_unsafe
      @g_object_param_spec_enum.not_nil!
    end

  end
end

