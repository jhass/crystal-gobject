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
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "flags", gvalue)
      gvalue.enum
    end

    def source
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "source", gvalue)
      GObject::Object.cast(gvalue.object)
    end

    def source_property
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "source_property", gvalue)
      gvalue.string
    end

    def target
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "target", gvalue)
      GObject::Object.cast(gvalue.object)
    end

    def target_property
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "target_property", gvalue)
      gvalue.string
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

