module Gio
  class DBusObjectManagerServer < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::DBusObjectManagerServer*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::DBusObjectManagerServer*)
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
      LibGio.d_bus_object_manager_server_export(@pointer.as(LibGio::DBusObjectManagerServer*), object.to_unsafe.as(LibGio::DBusObjectSkeleton*))
      nil
    end

    def export_uniquely(object)
      LibGio.d_bus_object_manager_server_export_uniquely(@pointer.as(LibGio::DBusObjectManagerServer*), object.to_unsafe.as(LibGio::DBusObjectSkeleton*))
      nil
    end

    def connection
      __return_value = LibGio.d_bus_object_manager_server_get_connection(@pointer.as(LibGio::DBusObjectManagerServer*))
      Gio::DBusConnection.new(__return_value)
    end

    def exported?(object)
      __return_value = LibGio.d_bus_object_manager_server_is_exported(@pointer.as(LibGio::DBusObjectManagerServer*), object.to_unsafe.as(LibGio::DBusObjectSkeleton*))
      __return_value
    end

    def connection=(connection)
      LibGio.d_bus_object_manager_server_set_connection(@pointer.as(LibGio::DBusObjectManagerServer*), connection ? connection.to_unsafe.as(LibGio::DBusConnection*) : nil)
      nil
    end

    def unexport(object_path)
      __return_value = LibGio.d_bus_object_manager_server_unexport(@pointer.as(LibGio::DBusObjectManagerServer*), object_path.to_unsafe)
      __return_value
    end

  end
end

