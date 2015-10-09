module Gio
  class DBusProxy < GObject::Object
    def initialize @gio_d_bus_proxy
    end

    def to_unsafe
      @gio_d_bus_proxy.not_nil!
    end

    # Implements AsyncInitable
    # Implements DBusInterface
    # Implements Initable









    def self.new_finish(res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_proxy_new_finish((res.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::DBusProxy.new(__return_value)
    end

    def self.new_for_bus_finish(res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_proxy_new_for_bus_finish((res.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::DBusProxy.new(__return_value)
    end

    def self.new_for_bus_sync(bus_type, flags, info, name, object_path, interface_name, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_proxy_new_for_bus_sync(bus_type, flags, info && (info.to_unsafe as LibGio::DBusInterfaceInfo*), name, object_path, interface_name, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      Gio::DBusProxy.new(__return_value)
    end

    def self.new_sync(connection, flags, info, name, object_path, interface_name, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_proxy_new_sync((connection.to_unsafe as LibGio::DBusConnection*), flags, info && (info.to_unsafe as LibGio::DBusInterfaceInfo*), name && name, object_path, interface_name, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      Gio::DBusProxy.new(__return_value)
    end

    def self.new_internal(connection, flags, info, name, object_path, interface_name, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.d_bus_proxy_new((connection.to_unsafe as LibGio::DBusConnection*), flags, info && (info.to_unsafe as LibGio::DBusInterfaceInfo*), name && name, object_path, interface_name, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def self.new_for_bus(bus_type, flags, info, name, object_path, interface_name, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.d_bus_proxy_new_for_bus(bus_type, flags, info && (info.to_unsafe as LibGio::DBusInterfaceInfo*), name, object_path, interface_name, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def call(method_name, parameters, flags, timeout_msec, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.d_bus_proxy_call((to_unsafe as LibGio::DBusProxy*), method_name, parameters && (parameters.to_unsafe as LibGLib::Variant*), flags, Int32.new(timeout_msec), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def call_finish(res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_proxy_call_finish((to_unsafe as LibGio::DBusProxy*), (res.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      GLib::Variant.new(__return_value)
    end

    def call_sync(method_name, parameters, flags, timeout_msec, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_proxy_call_sync((to_unsafe as LibGio::DBusProxy*), method_name, parameters && (parameters.to_unsafe as LibGLib::Variant*), flags, Int32.new(timeout_msec), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      GLib::Variant.new(__return_value)
    end

    def call_with_unix_fd_list(method_name, parameters, flags, timeout_msec, fd_list, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.d_bus_proxy_call_with_unix_fd_list((to_unsafe as LibGio::DBusProxy*), method_name, parameters && (parameters.to_unsafe as LibGLib::Variant*), flags, Int32.new(timeout_msec), fd_list && (fd_list.to_unsafe as LibGio::UnixFDList*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def call_with_unix_fd_list_finish(out_fd_list, res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_proxy_call_with_unix_fd_list_finish((to_unsafe as LibGio::DBusProxy*), (out_fd_list.to_unsafe as LibGio::UnixFDList*), (res.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      GLib::Variant.new(__return_value)
    end

    def call_with_unix_fd_list_sync(method_name, parameters, flags, timeout_msec, fd_list, out_fd_list, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_proxy_call_with_unix_fd_list_sync((to_unsafe as LibGio::DBusProxy*), method_name, parameters && (parameters.to_unsafe as LibGLib::Variant*), flags, Int32.new(timeout_msec), fd_list && (fd_list.to_unsafe as LibGio::UnixFDList*), (out_fd_list.to_unsafe as LibGio::UnixFDList*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      GLib::Variant.new(__return_value)
    end

    def cached_property(property_name)
      __return_value = LibGio.d_bus_proxy_get_cached_property((to_unsafe as LibGio::DBusProxy*), property_name)
      GLib::Variant.new(__return_value)
    end

    def cached_property_names
      __return_value = LibGio.d_bus_proxy_get_cached_property_names((to_unsafe as LibGio::DBusProxy*))
      PointerIterator.new(__return_value) {|__item_30| (raise "Expected string but got null" unless __item_30; String.new(__item_30)) }
    end

    def connection
      __return_value = LibGio.d_bus_proxy_get_connection((to_unsafe as LibGio::DBusProxy*))
      Gio::DBusConnection.new(__return_value)
    end

    def default_timeout
      __return_value = LibGio.d_bus_proxy_get_default_timeout((to_unsafe as LibGio::DBusProxy*))
      __return_value
    end

    def flags
      __return_value = LibGio.d_bus_proxy_get_flags((to_unsafe as LibGio::DBusProxy*))
      __return_value
    end

    def interface_info
      __return_value = LibGio.d_bus_proxy_get_interface_info((to_unsafe as LibGio::DBusProxy*))
      Gio::DBusInterfaceInfo.new(__return_value)
    end

    def interface_name
      __return_value = LibGio.d_bus_proxy_get_interface_name((to_unsafe as LibGio::DBusProxy*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def name
      __return_value = LibGio.d_bus_proxy_get_name((to_unsafe as LibGio::DBusProxy*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def name_owner
      __return_value = LibGio.d_bus_proxy_get_name_owner((to_unsafe as LibGio::DBusProxy*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def object_path
      __return_value = LibGio.d_bus_proxy_get_object_path((to_unsafe as LibGio::DBusProxy*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def set_cached_property(property_name, value)
      __return_value = LibGio.d_bus_proxy_set_cached_property((to_unsafe as LibGio::DBusProxy*), property_name, value && (value.to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def default_timeout=(timeout_msec)
      __return_value = LibGio.d_bus_proxy_set_default_timeout((to_unsafe as LibGio::DBusProxy*), Int32.new(timeout_msec))
      __return_value
    end

    def interface_info=(info)
      __return_value = LibGio.d_bus_proxy_set_interface_info((to_unsafe as LibGio::DBusProxy*), info && (info.to_unsafe as LibGio::DBusInterfaceInfo*))
      __return_value
    end

    alias GPropertiesChangedSignal = DBusProxy, GLib::Variant, Array(UInt8) -> 
    def on_g_properties_changed(&__block : GPropertiesChangedSignal)
      __callback = ->(_arg0 : LibGio::DBusProxy*, _arg1 : LibGio::LibGLib::Variant*, _arg2 : LibGio::UInt8***) {
       __return_value = __block.call(DBusProxy.new(_arg0), GLib::Variant.new(_arg1), PointerIterator.new(_arg2) {|__item_99| (raise "Expected string but got null" unless __item_99; String.new(__item_99)) })
       __return_value
      }
      connect("g-properties-changed", __callback)
    end

    alias GSignalSignal = DBusProxy, UInt8, UInt8, GLib::Variant -> 
    def on_g_signal(&__block : GSignalSignal)
      __callback = ->(_arg0 : LibGio::DBusProxy*, _arg1 : LibGio::UInt8**, _arg2 : LibGio::UInt8**, _arg3 : LibGio::LibGLib::Variant*) {
       __return_value = __block.call(DBusProxy.new(_arg0), (raise "Expected string but got null" unless _arg1; String.new(_arg1)), (raise "Expected string but got null" unless _arg2; String.new(_arg2)), GLib::Variant.new(_arg3))
       __return_value
      }
      connect("g-signal", __callback)
    end

  end
end

