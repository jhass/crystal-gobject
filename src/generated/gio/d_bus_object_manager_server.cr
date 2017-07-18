module Gio
  class DBusObjectManagerServer < GObject::Object
    @gio_d_bus_object_manager_server : LibGio::DBusObjectManagerServer*?
    def initialize(@gio_d_bus_object_manager_server : LibGio::DBusObjectManagerServer*)
    end

    def to_unsafe
      @gio_d_bus_object_manager_server.not_nil!
    end

    # Implements DBusObjectManager
    def connection
      __return_value = LibGio.d_bus_object_manager_server_get_connection(to_unsafe.as(LibGio::DBusObjectManagerServer*))
      Gio::DBusConnection.new(__return_value)
    end

    def object_path
      __return_value = LibGio.d_bus_object_manager_server_get_object_path(to_unsafe.as(LibGio::DBusObjectManagerServer*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.new(object_path) : self
      __return_value = LibGio.d_bus_object_manager_server_new(object_path.to_unsafe)
      cast Gio::DBusObjectManagerServer.new(__return_value)
    end

    def export(object)
      __return_value = LibGio.d_bus_object_manager_server_export(to_unsafe.as(LibGio::DBusObjectManagerServer*), object.to_unsafe.as(LibGio::DBusObjectSkeleton*))
      __return_value
    end

    def export_uniquely(object)
      __return_value = LibGio.d_bus_object_manager_server_export_uniquely(to_unsafe.as(LibGio::DBusObjectManagerServer*), object.to_unsafe.as(LibGio::DBusObjectSkeleton*))
      __return_value
    end

    def connection
      __return_value = LibGio.d_bus_object_manager_server_get_connection(to_unsafe.as(LibGio::DBusObjectManagerServer*))
      Gio::DBusConnection.new(__return_value)
    end

    def exported?(object)
      __return_value = LibGio.d_bus_object_manager_server_is_exported(to_unsafe.as(LibGio::DBusObjectManagerServer*), object.to_unsafe.as(LibGio::DBusObjectSkeleton*))
      __return_value
    end

    def connection=(connection)
      __return_value = LibGio.d_bus_object_manager_server_set_connection(to_unsafe.as(LibGio::DBusObjectManagerServer*), connection ? connection.to_unsafe.as(LibGio::DBusConnection*) : nil)
      __return_value
    end

    def unexport(object_path)
      __return_value = LibGio.d_bus_object_manager_server_unexport(to_unsafe.as(LibGio::DBusObjectManagerServer*), object_path.to_unsafe)
      __return_value
    end

  end
end

