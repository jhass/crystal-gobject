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
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "g_connection", gvalue)
      Gio::DBusConnection.cast(gvalue.object)
    end

    def g_object_path
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "g_object_path", gvalue)
      gvalue.string
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

