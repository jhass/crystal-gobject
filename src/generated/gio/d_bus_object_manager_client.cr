module Gio
  class DBusObjectManagerClient < GObject::Object
    def initialize @gio_d_bus_object_manager_client
    end

    def to_unsafe
      @gio_d_bus_object_manager_client.not_nil!
    end

    # Implements AsyncInitable
    # Implements DBusObjectManager
    # Implements Initable









    def self.new_finish(res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_object_manager_client_new_finish((res.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::DBusObjectManagerClient.new(__return_value)
    end

    def self.new_for_bus_finish(res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_object_manager_client_new_for_bus_finish((res.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::DBusObjectManagerClient.new(__return_value)
    end

    def self.new_for_bus_sync(bus_type, flags, name, object_path, get_proxy_type_func, get_proxy_type_user_data, get_proxy_type_destroy_notify, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_object_manager_client_new_for_bus_sync(bus_type, flags, name, object_path, get_proxy_type_func && get_proxy_type_func, get_proxy_type_user_data, get_proxy_type_destroy_notify && get_proxy_type_destroy_notify, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      Gio::DBusObjectManagerClient.new(__return_value)
    end

    def self.new_sync(connection, flags, name, object_path, get_proxy_type_func, get_proxy_type_user_data, get_proxy_type_destroy_notify, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_object_manager_client_new_sync((connection.to_unsafe as LibGio::DBusConnection*), flags, name && name, object_path, get_proxy_type_func && get_proxy_type_func, get_proxy_type_user_data, get_proxy_type_destroy_notify && get_proxy_type_destroy_notify, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      Gio::DBusObjectManagerClient.new(__return_value)
    end

    def self.new_internal(connection, flags, name, object_path, get_proxy_type_func, get_proxy_type_user_data, get_proxy_type_destroy_notify, cancellable, callback, user_data)
      __return_value = LibGio.d_bus_object_manager_client_new((connection.to_unsafe as LibGio::DBusConnection*), flags, name, object_path, get_proxy_type_func && get_proxy_type_func, get_proxy_type_user_data, get_proxy_type_destroy_notify && get_proxy_type_destroy_notify, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def self.new_for_bus(bus_type, flags, name, object_path, get_proxy_type_func, get_proxy_type_user_data, get_proxy_type_destroy_notify, cancellable, callback, user_data)
      __return_value = LibGio.d_bus_object_manager_client_new_for_bus(bus_type, flags, name, object_path, get_proxy_type_func && get_proxy_type_func, get_proxy_type_user_data, get_proxy_type_destroy_notify && get_proxy_type_destroy_notify, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def connection
      __return_value = LibGio.d_bus_object_manager_client_get_connection((to_unsafe as LibGio::DBusObjectManagerClient*))
      Gio::DBusConnection.new(__return_value)
    end

    def flags
      __return_value = LibGio.d_bus_object_manager_client_get_flags((to_unsafe as LibGio::DBusObjectManagerClient*))
      __return_value
    end

    def name
      __return_value = LibGio.d_bus_object_manager_client_get_name((to_unsafe as LibGio::DBusObjectManagerClient*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def name_owner
      __return_value = LibGio.d_bus_object_manager_client_get_name_owner((to_unsafe as LibGio::DBusObjectManagerClient*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value) if __return_value
    end

  end
end

