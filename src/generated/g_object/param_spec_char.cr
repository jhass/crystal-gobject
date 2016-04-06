require "./param_spec"

module GObject
  class ParamSpecChar < ParamSpec
    def initialize(@g_object_param_spec_char)
    end

    def to_unsafe
      @g_object_param_spec_char.not_nil!
    end

  end
end

