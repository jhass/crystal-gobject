module Gio
  class DBusObjectManagerServer < GObject::Object
    def initialize(@gio_d_bus_object_manager_server)
    end

    def to_unsafe
      @gio_d_bus_object_manager_server.not_nil!
    end

    # Implements DBusObjectManager


    def self.new_internal(object_path)
      __return_value = LibGio.d_bus_object_manager_server_new(object_path)
      Gio::DBusObjectManagerServer.new(__return_value)
    end

    def export(object)
      __return_value = LibGio.d_bus_object_manager_server_export((to_unsafe as LibGio::DBusObjectManagerServer*), (object.to_unsafe as LibGio::DBusObjectSkeleton*))
      __return_value
    end

    def export_uniquely(object)
      __return_value = LibGio.d_bus_object_manager_server_export_uniquely((to_unsafe as LibGio::DBusObjectManagerServer*), (object.to_unsafe as LibGio::DBusObjectSkeleton*))
      __return_value
    end

    def connection
      __return_value = LibGio.d_bus_object_manager_server_get_connection((to_unsafe as LibGio::DBusObjectManagerServer*))
      Gio::DBusConnection.new(__return_value)
    end

    def exported?(object)
      __return_value = LibGio.d_bus_object_manager_server_is_exported((to_unsafe as LibGio::DBusObjectManagerServer*), (object.to_unsafe as LibGio::DBusObjectSkeleton*))
      __return_value
    end

    def connection=(connection)
      __return_value = LibGio.d_bus_object_manager_server_set_connection((to_unsafe as LibGio::DBusObjectManagerServer*), connection && (connection.to_unsafe as LibGio::DBusConnection*))
      __return_value
    end

    def unexport(object_path)
      __return_value = LibGio.d_bus_object_manager_server_unexport((to_unsafe as LibGio::DBusObjectManagerServer*), object_path)
      __return_value
    end

  end
end

