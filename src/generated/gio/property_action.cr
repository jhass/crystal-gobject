module Gio
  class PropertyAction < GObject::Object
    def initialize(@gio_property_action)
    end

    def to_unsafe
      @gio_property_action.not_nil!
    end

    # Implements Action








    def self.new_internal(name, object, property_name)
      __return_value = LibGio.property_action_new(name, (object.to_unsafe as LibGObject::Object*), property_name)
      Gio::PropertyAction.new(__return_value)
    end

  end
end

