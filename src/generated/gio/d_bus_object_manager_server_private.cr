module Gio
  class DBusObjectManagerServerPrivate
    include GObject::WrappedType

    def initialize(@gio_d_bus_object_manager_server_private)
    end

    def to_unsafe
      @gio_d_bus_object_manager_server_private.not_nil!
    end

  end
end

