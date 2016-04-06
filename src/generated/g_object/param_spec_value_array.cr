require "./param_spec"

module GObject
  class ParamSpecValueArray < ParamSpec
    def initialize(@g_object_param_spec_value_array)
    end

    def to_unsafe
      @g_object_param_spec_value_array.not_nil!
    end

  end
end

