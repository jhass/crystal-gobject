module GObject
  class ParamSpec
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGObject::ParamSpec*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::ParamSpec*)
    end

    def blurb
      __return_value = LibGObject.param_spec_get_blurb(@pointer.as(LibGObject::ParamSpec*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def default_value
      __return_value = LibGObject.param_spec_get_default_value(@pointer.as(LibGObject::ParamSpec*))
      GObject::Value.new(__return_value)
    end

    def name
      __return_value = LibGObject.param_spec_get_name(@pointer.as(LibGObject::ParamSpec*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def name_quark
      __return_value = LibGObject.param_spec_get_name_quark(@pointer.as(LibGObject::ParamSpec*))
      __return_value
    end

    def nick
      __return_value = LibGObject.param_spec_get_nick(@pointer.as(LibGObject::ParamSpec*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def qdata(quark)
      LibGObject.param_spec_get_qdata(@pointer.as(LibGObject::ParamSpec*), UInt32.new(quark))
      nil
    end

    def redirect_target
      __return_value = LibGObject.param_spec_get_redirect_target(@pointer.as(LibGObject::ParamSpec*))
      GObject::ParamSpec.new(__return_value)
    end

    def set_qdata(quark, data)
      LibGObject.param_spec_set_qdata(@pointer.as(LibGObject::ParamSpec*), UInt32.new(quark), data ? data : nil)
      nil
    end

    def sink
      LibGObject.param_spec_sink(@pointer.as(LibGObject::ParamSpec*))
      nil
    end

    def steal_qdata(quark)
      LibGObject.param_spec_steal_qdata(@pointer.as(LibGObject::ParamSpec*), UInt32.new(quark))
      nil
    end

  end
end

