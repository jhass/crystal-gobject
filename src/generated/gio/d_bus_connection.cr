module Gio
  class DBusConnection < GObject::Object
    def initialize @gio_d_bus_connection
    end

    def to_unsafe
      @gio_d_bus_connection.not_nil!
    end

    # Implements AsyncInitable
    # Implements Initable




    def exit_on_close=(__value)
      LibGio.d_bus_connection_set_exit_on_close((to_unsafe as LibGio::DBusConnection*), Bool.cast(__value))
    end





    def self.new_finish(res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_new_finish((res.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::DBusConnection.new(__return_value)
    end

    def self.new_for_address_finish(res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_new_for_address_finish((res.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::DBusConnection.new(__return_value)
    end

    def self.new_for_address_sync(address, flags, observer, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_new_for_address_sync(address, flags, (observer.to_unsafe as LibGio::DBusAuthObserver*), (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      Gio::DBusConnection.new(__return_value)
    end

    def self.new_sync(stream, guid, flags, observer, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_new_sync((stream.to_unsafe as LibGio::IOStream*), guid, flags, (observer.to_unsafe as LibGio::DBusAuthObserver*), (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      Gio::DBusConnection.new(__return_value)
    end

    def self.new_internal(stream, guid, flags, observer, cancellable, callback, user_data)
      __return_value = LibGio.d_bus_connection_new((stream.to_unsafe as LibGio::IOStream*), guid, flags, (observer.to_unsafe as LibGio::DBusAuthObserver*), (cancellable.to_unsafe as LibGio::Cancellable*), callback, user_data)
      __return_value
    end

    def self.new_for_address(address, flags, observer, cancellable, callback, user_data)
      __return_value = LibGio.d_bus_connection_new_for_address(address, flags, (observer.to_unsafe as LibGio::DBusAuthObserver*), (cancellable.to_unsafe as LibGio::Cancellable*), callback, user_data)
      __return_value
    end

    def add_filter(filter_function, user_data, user_data_free_func)
      __return_value = LibGio.d_bus_connection_add_filter((to_unsafe as LibGio::DBusConnection*), filter_function, user_data, user_data_free_func)
      __return_value
    end

    def call(bus_name, object_path, interface_name, method_name, parameters, reply_type, flags, timeout_msec, cancellable, callback, user_data)
      __return_value = LibGio.d_bus_connection_call((to_unsafe as LibGio::DBusConnection*), bus_name, object_path, interface_name, method_name, (parameters.to_unsafe as LibGLib::Variant*), (reply_type.to_unsafe as LibGLib::VariantType*), flags, Int32.cast(timeout_msec), (cancellable.to_unsafe as LibGio::Cancellable*), callback, user_data)
      __return_value
    end

    def call_finish(res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_call_finish((to_unsafe as LibGio::DBusConnection*), (res.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      GLib::Variant.new(__return_value)
    end

    def call_sync(bus_name, object_path, interface_name, method_name, parameters, reply_type, flags, timeout_msec, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_call_sync((to_unsafe as LibGio::DBusConnection*), bus_name, object_path, interface_name, method_name, (parameters.to_unsafe as LibGLib::Variant*), (reply_type.to_unsafe as LibGLib::VariantType*), flags, Int32.cast(timeout_msec), (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      GLib::Variant.new(__return_value)
    end

    def call_with_unix_fd_list(bus_name, object_path, interface_name, method_name, parameters, reply_type, flags, timeout_msec, fd_list, cancellable, callback, user_data)
      __return_value = LibGio.d_bus_connection_call_with_unix_fd_list((to_unsafe as LibGio::DBusConnection*), bus_name, object_path, interface_name, method_name, (parameters.to_unsafe as LibGLib::Variant*), (reply_type.to_unsafe as LibGLib::VariantType*), flags, Int32.cast(timeout_msec), (fd_list.to_unsafe as LibGio::UnixFDList*), (cancellable.to_unsafe as LibGio::Cancellable*), callback, user_data)
      __return_value
    end

    def call_with_unix_fd_list_finish(out_fd_list, res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_call_with_unix_fd_list_finish((to_unsafe as LibGio::DBusConnection*), (out_fd_list.to_unsafe as LibGio::UnixFDList*), (res.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      GLib::Variant.new(__return_value)
    end

    def call_with_unix_fd_list_sync(bus_name, object_path, interface_name, method_name, parameters, reply_type, flags, timeout_msec, fd_list, out_fd_list, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_call_with_unix_fd_list_sync((to_unsafe as LibGio::DBusConnection*), bus_name, object_path, interface_name, method_name, (parameters.to_unsafe as LibGLib::Variant*), (reply_type.to_unsafe as LibGLib::VariantType*), flags, Int32.cast(timeout_msec), (fd_list.to_unsafe as LibGio::UnixFDList*), (out_fd_list.to_unsafe as LibGio::UnixFDList*), (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      GLib::Variant.new(__return_value)
    end

    def close(cancellable, callback, user_data)
      __return_value = LibGio.d_bus_connection_close((to_unsafe as LibGio::DBusConnection*), (cancellable.to_unsafe as LibGio::Cancellable*), callback, user_data)
      __return_value
    end

    def close_finish(res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_close_finish((to_unsafe as LibGio::DBusConnection*), (res.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def close_sync(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_close_sync((to_unsafe as LibGio::DBusConnection*), (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def emit_signal(destination_bus_name, object_path, interface_name, signal_name, parameters)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_emit_signal((to_unsafe as LibGio::DBusConnection*), destination_bus_name, object_path, interface_name, signal_name, (parameters.to_unsafe as LibGLib::Variant*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def export_action_group(object_path, action_group)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_export_action_group((to_unsafe as LibGio::DBusConnection*), object_path, (action_group.to_unsafe as LibGio::ActionGroup*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def export_menu_model(object_path, menu)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_export_menu_model((to_unsafe as LibGio::DBusConnection*), object_path, (menu.to_unsafe as LibGio::MenuModel*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def flush(cancellable, callback, user_data)
      __return_value = LibGio.d_bus_connection_flush((to_unsafe as LibGio::DBusConnection*), (cancellable.to_unsafe as LibGio::Cancellable*), callback, user_data)
      __return_value
    end

    def flush_finish(res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_flush_finish((to_unsafe as LibGio::DBusConnection*), (res.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def flush_sync(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_flush_sync((to_unsafe as LibGio::DBusConnection*), (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def capabilities
      __return_value = LibGio.d_bus_connection_get_capabilities((to_unsafe as LibGio::DBusConnection*))
      __return_value
    end

    def exit_on_close
      __return_value = LibGio.d_bus_connection_get_exit_on_close((to_unsafe as LibGio::DBusConnection*))
      __return_value
    end

    def guid
      __return_value = LibGio.d_bus_connection_get_guid((to_unsafe as LibGio::DBusConnection*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def last_serial
      __return_value = LibGio.d_bus_connection_get_last_serial((to_unsafe as LibGio::DBusConnection*))
      __return_value
    end

    def peer_credentials
      __return_value = LibGio.d_bus_connection_get_peer_credentials((to_unsafe as LibGio::DBusConnection*))
      Gio::Credentials.new(__return_value)
    end

    def stream
      __return_value = LibGio.d_bus_connection_get_stream((to_unsafe as LibGio::DBusConnection*))
      Gio::IOStream.new(__return_value)
    end

    def unique_name
      __return_value = LibGio.d_bus_connection_get_unique_name((to_unsafe as LibGio::DBusConnection*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def is_closed
      __return_value = LibGio.d_bus_connection_is_closed((to_unsafe as LibGio::DBusConnection*))
      __return_value
    end

    def register_object(object_path, interface_info, vtable, user_data, user_data_free_func)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_register_object((to_unsafe as LibGio::DBusConnection*), object_path, (interface_info.to_unsafe as LibGio::DBusInterfaceInfo*), (vtable.to_unsafe as LibGio::DBusInterfaceVTable*), user_data, user_data_free_func, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def register_subtree(object_path, vtable, flags, user_data, user_data_free_func)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_register_subtree((to_unsafe as LibGio::DBusConnection*), object_path, (vtable.to_unsafe as LibGio::DBusSubtreeVTable*), flags, user_data, user_data_free_func, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def remove_filter(filter_id)
      __return_value = LibGio.d_bus_connection_remove_filter((to_unsafe as LibGio::DBusConnection*), UInt32.cast(filter_id))
      __return_value
    end

    def send_message(message, flags, out_serial)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_send_message((to_unsafe as LibGio::DBusConnection*), (message.to_unsafe as LibGio::DBusMessage*), flags, UInt32.cast(out_serial), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def send_message_with_reply(message, flags, timeout_msec, out_serial, cancellable, callback, user_data)
      __return_value = LibGio.d_bus_connection_send_message_with_reply((to_unsafe as LibGio::DBusConnection*), (message.to_unsafe as LibGio::DBusMessage*), flags, Int32.cast(timeout_msec), UInt32.cast(out_serial), (cancellable.to_unsafe as LibGio::Cancellable*), callback, user_data)
      __return_value
    end

    def send_message_with_reply_finish(res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_send_message_with_reply_finish((to_unsafe as LibGio::DBusConnection*), (res.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::DBusMessage.new(__return_value)
    end

    def send_message_with_reply_sync(message, flags, timeout_msec, out_serial, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_send_message_with_reply_sync((to_unsafe as LibGio::DBusConnection*), (message.to_unsafe as LibGio::DBusMessage*), flags, Int32.cast(timeout_msec), UInt32.cast(out_serial), (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      Gio::DBusMessage.new(__return_value)
    end

    def exit_on_close=(exit_on_close)
      __return_value = LibGio.d_bus_connection_set_exit_on_close((to_unsafe as LibGio::DBusConnection*), Bool.cast(exit_on_close))
      __return_value
    end

    def signal_subscribe(sender, interface_name, member, object_path, arg0, flags, callback, user_data, user_data_free_func)
      __return_value = LibGio.d_bus_connection_signal_subscribe((to_unsafe as LibGio::DBusConnection*), sender, interface_name, member, object_path, arg0, flags, callback, user_data, user_data_free_func)
      __return_value
    end

    def signal_unsubscribe(subscription_id)
      __return_value = LibGio.d_bus_connection_signal_unsubscribe((to_unsafe as LibGio::DBusConnection*), UInt32.cast(subscription_id))
      __return_value
    end

    def start_message_processing
      __return_value = LibGio.d_bus_connection_start_message_processing((to_unsafe as LibGio::DBusConnection*))
      __return_value
    end

    def unexport_action_group(export_id)
      __return_value = LibGio.d_bus_connection_unexport_action_group((to_unsafe as LibGio::DBusConnection*), UInt32.cast(export_id))
      __return_value
    end

    def unexport_menu_model(export_id)
      __return_value = LibGio.d_bus_connection_unexport_menu_model((to_unsafe as LibGio::DBusConnection*), UInt32.cast(export_id))
      __return_value
    end

    def unregister_object(registration_id)
      __return_value = LibGio.d_bus_connection_unregister_object((to_unsafe as LibGio::DBusConnection*), UInt32.cast(registration_id))
      __return_value
    end

    def unregister_subtree(registration_id)
      __return_value = LibGio.d_bus_connection_unregister_subtree((to_unsafe as LibGio::DBusConnection*), UInt32.cast(registration_id))
      __return_value
    end

  end
end

