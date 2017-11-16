module Gio
  class DBusProxy < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::DBusProxy*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::DBusProxy*)
    end

    # Implements AsyncInitable
    # Implements DBusInterface
    # Implements Initable

    def g_connection
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "g_connection", gvalue)
      Gio::DBusConnection.cast(gvalue.object)
    end

    def g_default_timeout
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "g_default_timeout", gvalue)
      gvalue
    end

    def g_flags
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "g_flags", gvalue)
      gvalue.enum
    end

    def g_interface_info
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "g_interface_info", gvalue)
      Gio::DBusInterfaceInfo.cast(gvalue.object)
    end

    def g_interface_name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "g_interface_name", gvalue)
      gvalue.string
    end

    def g_name
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "g_name", gvalue)
      gvalue.string
    end

    def g_name_owner
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "g_name_owner", gvalue)
      gvalue.string
    end

    def g_object_path
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "g_object_path", gvalue)
      gvalue.string
    end

    def self.new_finish(res) : self # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_proxy_new_finish(res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      cast Gio::DBusProxy.new(__return_value)
    end

    def self.new_for_bus_finish(res) : self # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_proxy_new_for_bus_finish(res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      cast Gio::DBusProxy.new(__return_value)
    end

    def self.new_for_bus_sync(bus_type : Gio::BusType, flags : Gio::DBusProxyFlags, info, name, object_path, interface_name, cancellable) : self # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_proxy_new_for_bus_sync(bus_type, flags, info ? info.to_unsafe.as(LibGio::DBusInterfaceInfo*) : nil, name.to_unsafe, object_path.to_unsafe, interface_name.to_unsafe, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      cast Gio::DBusProxy.new(__return_value)
    end

    def self.new_sync(connection, flags : Gio::DBusProxyFlags, info, name, object_path, interface_name, cancellable) : self # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_proxy_new_sync(connection.to_unsafe.as(LibGio::DBusConnection*), flags, info ? info.to_unsafe.as(LibGio::DBusInterfaceInfo*) : nil, name ? name.to_unsafe : nil, object_path.to_unsafe, interface_name.to_unsafe, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      cast Gio::DBusProxy.new(__return_value)
    end

    def self.new(connection, flags : Gio::DBusProxyFlags, info, name, object_path, interface_name, cancellable, callback, user_data)
      LibGio.d_bus_proxy_new(connection.to_unsafe.as(LibGio::DBusConnection*), flags, info ? info.to_unsafe.as(LibGio::DBusInterfaceInfo*) : nil, name ? name.to_unsafe : nil, object_path.to_unsafe, interface_name.to_unsafe, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def self.new_for_bus(bus_type : Gio::BusType, flags : Gio::DBusProxyFlags, info, name, object_path, interface_name, cancellable, callback, user_data)
      LibGio.d_bus_proxy_new_for_bus(bus_type, flags, info ? info.to_unsafe.as(LibGio::DBusInterfaceInfo*) : nil, name.to_unsafe, object_path.to_unsafe, interface_name.to_unsafe, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def call(method_name, parameters, flags : Gio::DBusCallFlags, timeout_msec, cancellable, callback, user_data)
      LibGio.d_bus_proxy_call(@pointer.as(LibGio::DBusProxy*), method_name.to_unsafe, parameters ? parameters.to_unsafe.as(LibGLib::Variant*) : nil, flags, Int32.new(timeout_msec), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def call_finish(res) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_proxy_call_finish(@pointer.as(LibGio::DBusProxy*), res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      GLib::Variant.new(__return_value)
    end

    def call_sync(method_name, parameters, flags : Gio::DBusCallFlags, timeout_msec, cancellable) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_proxy_call_sync(@pointer.as(LibGio::DBusProxy*), method_name.to_unsafe, parameters ? parameters.to_unsafe.as(LibGLib::Variant*) : nil, flags, Int32.new(timeout_msec), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      GLib::Variant.new(__return_value)
    end

    def call_with_unix_fd_list(method_name, parameters, flags : Gio::DBusCallFlags, timeout_msec, fd_list, cancellable, callback, user_data)
      LibGio.d_bus_proxy_call_with_unix_fd_list(@pointer.as(LibGio::DBusProxy*), method_name.to_unsafe, parameters ? parameters.to_unsafe.as(LibGLib::Variant*) : nil, flags, Int32.new(timeout_msec), fd_list ? fd_list.to_unsafe.as(LibGio::UnixFDList*) : nil, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def call_with_unix_fd_list_finish(out_fd_list, res) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_proxy_call_with_unix_fd_list_finish(@pointer.as(LibGio::DBusProxy*), out_fd_list, res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      GLib::Variant.new(__return_value)
    end

    def call_with_unix_fd_list_sync(method_name, parameters, flags : Gio::DBusCallFlags, timeout_msec, fd_list, out_fd_list, cancellable) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_proxy_call_with_unix_fd_list_sync(@pointer.as(LibGio::DBusProxy*), method_name.to_unsafe, parameters ? parameters.to_unsafe.as(LibGLib::Variant*) : nil, flags, Int32.new(timeout_msec), fd_list ? fd_list.to_unsafe.as(LibGio::UnixFDList*) : nil, out_fd_list, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      GLib::Variant.new(__return_value)
    end

    def cached_property(property_name)
      __return_value = LibGio.d_bus_proxy_get_cached_property(@pointer.as(LibGio::DBusProxy*), property_name.to_unsafe)
      GLib::Variant.new(__return_value)
    end

    def cached_property_names
      __return_value = LibGio.d_bus_proxy_get_cached_property_names(@pointer.as(LibGio::DBusProxy*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def connection
      __return_value = LibGio.d_bus_proxy_get_connection(@pointer.as(LibGio::DBusProxy*))
      Gio::DBusConnection.new(__return_value)
    end

    def default_timeout
      __return_value = LibGio.d_bus_proxy_get_default_timeout(@pointer.as(LibGio::DBusProxy*))
      __return_value
    end

    def flags
      __return_value = LibGio.d_bus_proxy_get_flags(@pointer.as(LibGio::DBusProxy*))
      __return_value
    end

    def interface_info
      __return_value = LibGio.d_bus_proxy_get_interface_info(@pointer.as(LibGio::DBusProxy*))
      Gio::DBusInterfaceInfo.new(__return_value)
    end

    def interface_name
      __return_value = LibGio.d_bus_proxy_get_interface_name(@pointer.as(LibGio::DBusProxy*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def name
      __return_value = LibGio.d_bus_proxy_get_name(@pointer.as(LibGio::DBusProxy*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def name_owner
      __return_value = LibGio.d_bus_proxy_get_name_owner(@pointer.as(LibGio::DBusProxy*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def object_path
      __return_value = LibGio.d_bus_proxy_get_object_path(@pointer.as(LibGio::DBusProxy*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def set_cached_property(property_name, value)
      LibGio.d_bus_proxy_set_cached_property(@pointer.as(LibGio::DBusProxy*), property_name.to_unsafe, value ? value.to_unsafe.as(LibGLib::Variant*) : nil)
      nil
    end

    def default_timeout=(timeout_msec)
      LibGio.d_bus_proxy_set_default_timeout(@pointer.as(LibGio::DBusProxy*), Int32.new(timeout_msec))
      nil
    end

    def interface_info=(info)
      LibGio.d_bus_proxy_set_interface_info(@pointer.as(LibGio::DBusProxy*), info ? info.to_unsafe.as(LibGio::DBusInterfaceInfo*) : nil)
      nil
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

