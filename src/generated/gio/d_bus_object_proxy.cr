module Gio
  class DBusObjectProxy < GObject::Object
    def initialize(@gio_d_bus_object_proxy)
    end

    def to_unsafe
      @gio_d_bus_object_proxy.not_nil!
    end

    # Implements DBusObject


    def self.new_internal(connection, object_path)
      __return_value = LibGio.d_bus_object_proxy_new((connection.to_unsafe as LibGio::DBusConnection*), object_path)
      Gio::DBusObjectProxy.new(__return_value)
    end

    def connection
      __return_value = LibGio.d_bus_object_proxy_get_connection((to_unsafe as LibGio::DBusObjectProxy*))
      Gio::DBusConnection.new(__return_value)
    end

  end
end

