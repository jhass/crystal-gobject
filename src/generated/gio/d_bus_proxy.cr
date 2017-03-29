module Gio
  class DBusProxy < GObject::Object
    @gio_d_bus_proxy : LibGio::DBusProxy*?
    def initialize(@gio_d_bus_proxy : LibGio::DBusProxy*)
    end

    def to_unsafe
      @gio_d_bus_proxy.not_nil!
    end

    # Implements AsyncInitable
    # Implements DBusInterface
    # Implements Initable









    def self.new_finish(res) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_proxy_new_finish(res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      cast Gio::DBusProxy.new(__return_value)
    end

    def self.new_for_bus_finish(res) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_proxy_new_for_bus_finish(res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      cast Gio::DBusProxy.new(__return_value)
    end

    def self.new_for_bus_sync(bus_type : Gio::BusType, flags : Gio::DBusProxyFlags, info, name, object_path, interface_name, cancellable) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_proxy_new_for_bus_sync(bus_type, flags, info ? info.to_unsafe.as(LibGio::DBusInterfaceInfo*) : nil, name.to_unsafe, object_path.to_unsafe, interface_name.to_unsafe, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      cast Gio::DBusProxy.new(__return_value)
    end

    def self.new_sync(connection, flags : Gio::DBusProxyFlags, info, name, object_path, interface_name, cancellable) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_proxy_new_sync(connection.to_unsafe.as(LibGio::DBusConnection*), flags, info ? info.to_unsafe.as(LibGio::DBusInterfaceInfo*) : nil, name ? name.to_unsafe : nil, object_path.to_unsafe, interface_name.to_unsafe, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      cast Gio::DBusProxy.new(__return_value)
    end

    def self.new(connection, flags : Gio::DBusProxyFlags, info, name, object_path, interface_name, cancellable, callback, user_data)
      __return_value = LibGio.d_bus_proxy_new(connection.to_unsafe.as(LibGio::DBusConnection*), flags, info ? info.to_unsafe.as(LibGio::DBusInterfaceInfo*) : nil, name ? name.to_unsafe : nil, object_path.to_unsafe, interface_name.to_unsafe, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      __return_value
    end

    def self.new_for_bus(bus_type : Gio::BusType, flags : Gio::DBusProxyFlags, info, name, object_path, interface_name, cancellable, callback, user_data)
      __return_value = LibGio.d_bus_proxy_new_for_bus(bus_type, flags, info ? info.to_unsafe.as(LibGio::DBusInterfaceInfo*) : nil, name.to_unsafe, object_path.to_unsafe, interface_name.to_unsafe, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      __return_value
    end

    def call(method_name, parameters, flags : Gio::DBusCallFlags, timeout_msec, cancellable, callback, user_data)
      __return_value = LibGio.d_bus_proxy_call(to_unsafe.as(LibGio::DBusProxy*), method_name.to_unsafe, parameters ? parameters.to_unsafe.as(LibGLib::Variant*) : nil, flags, Int32.new(timeout_msec), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      __return_value
    end

    def call_finish(res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_proxy_call_finish(to_unsafe.as(LibGio::DBusProxy*), res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      GLib::Variant.new(__return_value)
    end

    def call_sync(method_name, parameters, flags : Gio::DBusCallFlags, timeout_msec, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_proxy_call_sync(to_unsafe.as(LibGio::DBusProxy*), method_name.to_unsafe, parameters ? parameters.to_unsafe.as(LibGLib::Variant*) : nil, flags, Int32.new(timeout_msec), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      GLib::Variant.new(__return_value)
    end

    def call_with_unix_fd_list(method_name, parameters, flags : Gio::DBusCallFlags, timeout_msec, fd_list, cancellable, callback, user_data)
      __return_value = LibGio.d_bus_proxy_call_with_unix_fd_list(to_unsafe.as(LibGio::DBusProxy*), method_name.to_unsafe, parameters ? parameters.to_unsafe.as(LibGLib::Variant*) : nil, flags, Int32.new(timeout_msec), fd_list ? fd_list.to_unsafe.as(LibGio::UnixFDList*) : nil, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      __return_value
    end

    def call_with_unix_fd_list_finish(out_fd_list, res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_proxy_call_with_unix_fd_list_finish(to_unsafe.as(LibGio::DBusProxy*), out_fd_list, res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      GLib::Variant.new(__return_value)
    end

    def call_with_unix_fd_list_sync(method_name, parameters, flags : Gio::DBusCallFlags, timeout_msec, fd_list, out_fd_list, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_proxy_call_with_unix_fd_list_sync(to_unsafe.as(LibGio::DBusProxy*), method_name.to_unsafe, parameters ? parameters.to_unsafe.as(LibGLib::Variant*) : nil, flags, Int32.new(timeout_msec), fd_list ? fd_list.to_unsafe.as(LibGio::UnixFDList*) : nil, out_fd_list, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      GLib::Variant.new(__return_value)
    end

    def cached_property(property_name)
      __return_value = LibGio.d_bus_proxy_get_cached_property(to_unsafe.as(LibGio::DBusProxy*), property_name.to_unsafe)
      GLib::Variant.new(__return_value)
    end

    def cached_property_names
      __return_value = LibGio.d_bus_proxy_get_cached_property_names(to_unsafe.as(LibGio::DBusProxy*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def connection
      __return_value = LibGio.d_bus_proxy_get_connection(to_unsafe.as(LibGio::DBusProxy*))
      Gio::DBusConnection.new(__return_value)
    end

    def default_timeout
      __return_value = LibGio.d_bus_proxy_get_default_timeout(to_unsafe.as(LibGio::DBusProxy*))
      __return_value
    end

    def flags
      __return_value = LibGio.d_bus_proxy_get_flags(to_unsafe.as(LibGio::DBusProxy*))
      __return_value
    end

    def interface_info
      __return_value = LibGio.d_bus_proxy_get_interface_info(to_unsafe.as(LibGio::DBusProxy*))
      Gio::DBusInterfaceInfo.new(__return_value)
    end

    def interface_name
      __return_value = LibGio.d_bus_proxy_get_interface_name(to_unsafe.as(LibGio::DBusProxy*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def name
      __return_value = LibGio.d_bus_proxy_get_name(to_unsafe.as(LibGio::DBusProxy*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def name_owner
      __return_value = LibGio.d_bus_proxy_get_name_owner(to_unsafe.as(LibGio::DBusProxy*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def object_path
      __return_value = LibGio.d_bus_proxy_get_object_path(to_unsafe.as(LibGio::DBusProxy*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def set_cached_property(property_name, value)
      __return_value = LibGio.d_bus_proxy_set_cached_property(to_unsafe.as(LibGio::DBusProxy*), property_name.to_unsafe, value ? value.to_unsafe.as(LibGLib::Variant*) : nil)
      __return_value
    end

    def default_timeout=(timeout_msec)
      __return_value = LibGio.d_bus_proxy_set_default_timeout(to_unsafe.as(LibGio::DBusProxy*), Int32.new(timeout_msec))
      __return_value
    end

    def interface_info=(info)
      __return_value = LibGio.d_bus_proxy_set_interface_info(to_unsafe.as(LibGio::DBusProxy*), info ? info.to_unsafe.as(LibGio::DBusInterfaceInfo*) : nil)
      __return_value
    end

    alias GPropertiesChangedSignal = DBusProxy, GLib::Variant, Array(String) ->
    def on_g_properties_changed(&__block : GPropertiesChangedSignal)
      __callback = ->(_arg0 : LibGio::DBusProxy*, _arg1 : LibGio::LibGLib::Variant*, _arg2 : LibGio::UInt8***) {
       __return_value = __block.call(DBusProxy.new(_arg0), GLib::Variant.new(_arg1), PointerIterator.new(_arg2) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) })
       __return_value
      }
      connect("g-properties-changed", __callback)
    end

    alias GSignalSignal = DBusProxy, String, String, GLib::Variant ->
    def on_g_signal(&__block : GSignalSignal)
      __callback = ->(_arg0 : LibGio::DBusProxy*, _arg1 : LibGio::UInt8**, _arg2 : LibGio::UInt8**, _arg3 : LibGio::LibGLib::Variant*) {
       __return_value = __block.call(DBusProxy.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)), (raise "Expected string but got null" unless _arg2; ::String.new(_arg2)), GLib::Variant.new(_arg3))
       __return_value
      }
      connect("g-signal", __callback)
    end

  end
end

