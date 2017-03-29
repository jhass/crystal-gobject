module Gio
  class PropertyAction < GObject::Object
    @gio_property_action : LibGio::PropertyAction*?
    def initialize(@gio_property_action : LibGio::PropertyAction*)
    end

    def to_unsafe
      @gio_property_action.not_nil!
    end

    # Implements Action








    def self.new(name, object, property_name) : self
      __return_value = LibGio.property_action_new(name, object.to_unsafe.as(LibGObject::Object*), property_name)
      cast Gio::PropertyAction.new(__return_value)
    end

  end
end

