module Gio
  class DBusObjectProxy < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::DBusObjectProxy*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::DBusObjectProxy*)
    end

    # Implements DBusObject
    def g_connection
      __return_value = LibGio.d_bus_object_proxy_get_g_connection(to_unsafe.as(LibGio::DBusObjectProxy*))
      Gio::DBusConnection.new(__return_value)
    end

    def g_object_path
      __return_value = LibGio.d_bus_object_proxy_get_g_object_path(to_unsafe.as(LibGio::DBusObjectProxy*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.new(connection, object_path) : self
      __return_value = LibGio.d_bus_object_proxy_new(connection.to_unsafe.as(LibGio::DBusConnection*), object_path.to_unsafe)
      cast Gio::DBusObjectProxy.new(__return_value)
    end

    def connection
      __return_value = LibGio.d_bus_object_proxy_get_connection(@pointer.as(LibGio::DBusObjectProxy*))
      Gio::DBusConnection.new(__return_value)
    end

  end
end

