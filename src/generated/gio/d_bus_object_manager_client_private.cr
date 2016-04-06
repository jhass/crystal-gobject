module Gio
  class DBusObjectManagerClientPrivate
    include GObject::WrappedType

    def initialize(@gio_d_bus_object_manager_client_private)
    end

    def to_unsafe
      @gio_d_bus_object_manager_client_private.not_nil!
    end

  end
end

