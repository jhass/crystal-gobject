module Gio
  class PropertyAction < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::PropertyAction*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::PropertyAction*)
    end

    # Implements Action
    def enabled
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "enabled", gvalue)
      gvalue.boolean
    end

    def invert_boolean
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "invert_boolean", gvalue)
      gvalue.boolean
    end

    def name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "name", gvalue)
      gvalue.string
    end


    def parameter_type
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "parameter_type", gvalue)
      GLib::VariantType.cast(gvalue.object)
    end


    def state
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "state", gvalue)
      GLib::Variant.cast(gvalue.object)
    end

    def state_type
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "state_type", gvalue)
      GLib::VariantType.cast(gvalue.object)
    end

    def self.new(name, object, property_name) : self
      __return_value = LibGio.property_action_new(name.to_unsafe, object.to_unsafe.as(LibGObject::Object*), property_name.to_unsafe)
      cast Gio::PropertyAction.new(__return_value)
    end

  end
end

