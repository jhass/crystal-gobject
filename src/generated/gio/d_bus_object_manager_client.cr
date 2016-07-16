module Gio
  class DBusObjectManagerClient < GObject::Object
    @gio_d_bus_object_manager_client : LibGio::DBusObjectManagerClient*?
    def initialize(@gio_d_bus_object_manager_client : LibGio::DBusObjectManagerClient*)
    end

    def to_unsafe
      @gio_d_bus_object_manager_client.not_nil!.as(Void*)
    end

    # Implements AsyncInitable
    # Implements DBusObjectManager
    # Implements Initable









    def self.new_finish(res) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_object_manager_client_new_finish(res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      cast Gio::DBusObjectManagerClient.new(__return_value)
    end

    def self.new_for_bus_finish(res) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_object_manager_client_new_for_bus_finish(res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      cast Gio::DBusObjectManagerClient.new(__return_value)
    end

    def self.new_for_bus_sync(bus_type, flags, name, object_path, get_proxy_type_func : LibGio::DBusProxyTypeFunc?, get_proxy_type_user_data, get_proxy_type_destroy_notify : LibGLib::DestroyNotify?, cancellable) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_object_manager_client_new_for_bus_sync(bus_type, flags, name.to_unsafe, object_path.to_unsafe, get_proxy_type_func && get_proxy_type_func, get_proxy_type_user_data && get_proxy_type_user_data, get_proxy_type_destroy_notify && get_proxy_type_destroy_notify, cancellable && cancellable.to_unsafe.as(LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      cast Gio::DBusObjectManagerClient.new(__return_value)
    end

    def self.new_sync(connection, flags, name, object_path, get_proxy_type_func : LibGio::DBusProxyTypeFunc?, get_proxy_type_user_data, get_proxy_type_destroy_notify : LibGLib::DestroyNotify?, cancellable) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_object_manager_client_new_sync(connection.to_unsafe.as(LibGio::DBusConnection*), flags, name && name.to_unsafe, object_path.to_unsafe, get_proxy_type_func && get_proxy_type_func, get_proxy_type_user_data && get_proxy_type_user_data, get_proxy_type_destroy_notify && get_proxy_type_destroy_notify, cancellable && cancellable.to_unsafe.as(LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      cast Gio::DBusObjectManagerClient.new(__return_value)
    end

    def self.new(connection, flags, name, object_path, get_proxy_type_func : LibGio::DBusProxyTypeFunc?, get_proxy_type_user_data, get_proxy_type_destroy_notify : LibGLib::DestroyNotify?, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.d_bus_object_manager_client_new(connection.to_unsafe.as(LibGio::DBusConnection*), flags, name.to_unsafe, object_path.to_unsafe, get_proxy_type_func && get_proxy_type_func, get_proxy_type_user_data && get_proxy_type_user_data, get_proxy_type_destroy_notify && get_proxy_type_destroy_notify, cancellable && cancellable.to_unsafe.as(LibGio::Cancellable*), callback && callback, user_data && user_data)
      __return_value
    end

    def self.new_for_bus(bus_type, flags, name, object_path, get_proxy_type_func : LibGio::DBusProxyTypeFunc?, get_proxy_type_user_data, get_proxy_type_destroy_notify : LibGLib::DestroyNotify?, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.d_bus_object_manager_client_new_for_bus(bus_type, flags, name.to_unsafe, object_path.to_unsafe, get_proxy_type_func && get_proxy_type_func, get_proxy_type_user_data && get_proxy_type_user_data, get_proxy_type_destroy_notify && get_proxy_type_destroy_notify, cancellable && cancellable.to_unsafe.as(LibGio::Cancellable*), callback && callback, user_data && user_data)
      __return_value
    end

    def connection
      __return_value = LibGio.d_bus_object_manager_client_get_connection(to_unsafe.as(LibGio::DBusObjectManagerClient*))
      Gio::DBusConnection.new(__return_value)
    end

    def flags
      __return_value = LibGio.d_bus_object_manager_client_get_flags(to_unsafe.as(LibGio::DBusObjectManagerClient*))
      __return_value
    end

    def name
      __return_value = LibGio.d_bus_object_manager_client_get_name(to_unsafe.as(LibGio::DBusObjectManagerClient*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def name_owner
      __return_value = LibGio.d_bus_object_manager_client_get_name_owner(to_unsafe.as(LibGio::DBusObjectManagerClient*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    alias InterfaceProxyPropertiesChangedSignal = DBusObjectManagerClient, Gio::DBusObjectProxy, Gio::DBusProxy, GLib::Variant, Array(String) ->
    def on_interface_proxy_properties_changed(&__block : InterfaceProxyPropertiesChangedSignal)
      __callback = ->(_arg0 : LibGio::DBusObjectManagerClient*, _arg1 : LibGio::LibGio::DBusObjectProxy*, _arg2 : LibGio::LibGio::DBusProxy*, _arg3 : LibGio::LibGLib::Variant*, _arg4 : LibGio::UInt8***) {
       __return_value = __block.call(DBusObjectManagerClient.new(_arg0), Gio::DBusObjectProxy.new(_arg1), Gio::DBusProxy.new(_arg2), GLib::Variant.new(_arg3), PointerIterator.new(_arg4) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) })
       __return_value
      }
      connect("interface-proxy-properties-changed", __callback)
    end

    alias InterfaceProxySignalSignal = DBusObjectManagerClient, Gio::DBusObjectProxy, Gio::DBusProxy, String, String, GLib::Variant ->
    def on_interface_proxy_signal(&__block : InterfaceProxySignalSignal)
      __callback = ->(_arg0 : LibGio::DBusObjectManagerClient*, _arg1 : LibGio::LibGio::DBusObjectProxy*, _arg2 : LibGio::LibGio::DBusProxy*, _arg3 : LibGio::UInt8**, _arg4 : LibGio::UInt8**, _arg5 : LibGio::LibGLib::Variant*) {
       __return_value = __block.call(DBusObjectManagerClient.new(_arg0), Gio::DBusObjectProxy.new(_arg1), Gio::DBusProxy.new(_arg2), (raise "Expected string but got null" unless _arg3; ::String.new(_arg3)), (raise "Expected string but got null" unless _arg4; ::String.new(_arg4)), GLib::Variant.new(_arg5))
       __return_value
      }
      connect("interface-proxy-signal", __callback)
    end

  end
end

