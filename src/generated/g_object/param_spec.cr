module GObject
  class ParamSpec
    include GObject::WrappedType

    def initialize(@g_object_param_spec)
    end

    def to_unsafe
      @g_object_param_spec.not_nil!
    end

    def blurb
      __return_value = LibGObject.param_spec_get_blurb((to_unsafe as LibGObject::ParamSpec*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def default_value
      __return_value = LibGObject.param_spec_get_default_value((to_unsafe as LibGObject::ParamSpec*))
      GObject::Value.new(__return_value)
    end

    def name
      __return_value = LibGObject.param_spec_get_name((to_unsafe as LibGObject::ParamSpec*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def name_quark
      __return_value = LibGObject.param_spec_get_name_quark((to_unsafe as LibGObject::ParamSpec*))
      __return_value
    end

    def nick
      __return_value = LibGObject.param_spec_get_nick((to_unsafe as LibGObject::ParamSpec*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def qdata(quark)
      __return_value = LibGObject.param_spec_get_qdata((to_unsafe as LibGObject::ParamSpec*), UInt32.new(quark))
      __return_value
    end

    def redirect_target
      __return_value = LibGObject.param_spec_get_redirect_target((to_unsafe as LibGObject::ParamSpec*))
      GObject::ParamSpec.new(__return_value)
    end

    def set_qdata(quark, data)
      __return_value = LibGObject.param_spec_set_qdata((to_unsafe as LibGObject::ParamSpec*), UInt32.new(quark), data)
      __return_value
    end

    def sink
      __return_value = LibGObject.param_spec_sink((to_unsafe as LibGObject::ParamSpec*))
      __return_value
    end

    def steal_qdata(quark)
      __return_value = LibGObject.param_spec_steal_qdata((to_unsafe as LibGObject::ParamSpec*), UInt32.new(quark))
      __return_value
    end

  end
end

