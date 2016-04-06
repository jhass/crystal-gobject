require "./param_spec"

module GObject
  class ParamSpecUnichar < ParamSpec
    def initialize(@g_object_param_spec_unichar)
    end

    def to_unsafe
      @g_object_param_spec_unichar.not_nil!
    end

  end
end

