module Gio
  class DBusObjectManagerClientPrivate
    include GObject::WrappedType

    @gio_d_bus_object_manager_client_private : LibGio::DBusObjectManagerClientPrivate*?
    def initialize(@gio_d_bus_object_manager_client_private : LibGio::DBusObjectManagerClientPrivate*)
    end

    def to_unsafe
      @gio_d_bus_object_manager_client_private.not_nil!.as(Void*)
    end

  end
end

