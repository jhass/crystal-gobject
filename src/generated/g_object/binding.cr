require "./object"

module GObject
  class Binding < Object
    @pointer : Void*
    def initialize(pointer : LibGObject::Binding*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::Binding*)
    end

    def flags
      __return_value = LibGObject.binding_get_flags(to_unsafe.as(LibGObject::Binding*))
      __return_value
    end

    def source
      __return_value = LibGObject.binding_get_source(to_unsafe.as(LibGObject::Binding*))
      GObject::Object.new(__return_value)
    end

    def source_property
      __return_value = LibGObject.binding_get_source_property(to_unsafe.as(LibGObject::Binding*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def target
      __return_value = LibGObject.binding_get_target(to_unsafe.as(LibGObject::Binding*))
      GObject::Object.new(__return_value)
    end

    def target_property
      __return_value = LibGObject.binding_get_target_property(to_unsafe.as(LibGObject::Binding*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def flags
      __return_value = LibGObject.binding_get_flags(@pointer.as(LibGObject::Binding*))
      __return_value
    end

    def source
      __return_value = LibGObject.binding_get_source(@pointer.as(LibGObject::Binding*))
      GObject::Object.new(__return_value)
    end

    def source_property
      __return_value = LibGObject.binding_get_source_property(@pointer.as(LibGObject::Binding*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def target
      __return_value = LibGObject.binding_get_target(@pointer.as(LibGObject::Binding*))
      GObject::Object.new(__return_value)
    end

    def target_property
      __return_value = LibGObject.binding_get_target_property(@pointer.as(LibGObject::Binding*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def unbind
      LibGObject.binding_unbind(@pointer.as(LibGObject::Binding*))
      nil
    end

  end
end

