require "./param_spec"

module GObject
  class ParamSpecUChar < ParamSpec
    def initialize(@g_object_param_spec_u_char)
    end

    def to_unsafe
      @g_object_param_spec_u_char.not_nil!
    end

  end
end

