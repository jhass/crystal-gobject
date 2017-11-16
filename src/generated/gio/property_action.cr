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
      __return_value = LibGio.property_action_get_enabled(to_unsafe.as(LibGio::PropertyAction*))
      __return_value
    end

    def invert_boolean
      __return_value = LibGio.property_action_get_invert_boolean(to_unsafe.as(LibGio::PropertyAction*))
      __return_value
    end

    def name
      __return_value = LibGio.property_action_get_name(to_unsafe.as(LibGio::PropertyAction*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end


    def parameter_type
      __return_value = LibGio.property_action_get_parameter_type(to_unsafe.as(LibGio::PropertyAction*))
      GLib::VariantType.new(__return_value)
    end


    def state
      __return_value = LibGio.property_action_get_state(to_unsafe.as(LibGio::PropertyAction*))
      GLib::Variant.new(__return_value)
    end

    def state_type
      __return_value = LibGio.property_action_get_state_type(to_unsafe.as(LibGio::PropertyAction*))
      GLib::VariantType.new(__return_value)
    end

    def self.new(name, object, property_name) : self
      __return_value = LibGio.property_action_new(name.to_unsafe, object.to_unsafe.as(LibGObject::Object*), property_name.to_unsafe)
      cast Gio::PropertyAction.new(__return_value)
    end

  end
end

