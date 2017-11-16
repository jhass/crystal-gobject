module Gio
  class DBusConnection < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::DBusConnection*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::DBusConnection*)
    end

    # Implements AsyncInitable
    # Implements Initable


    def capabilities
      __return_value = LibGio.d_bus_connection_get_capabilities(to_unsafe.as(LibGio::DBusConnection*))
      __return_value
    end

    def closed
      __return_value = LibGio.d_bus_connection_get_closed(to_unsafe.as(LibGio::DBusConnection*))
      __return_value
    end

    def exit_on_close
      __return_value = LibGio.d_bus_connection_get_exit_on_close(to_unsafe.as(LibGio::DBusConnection*))
      __return_value
    end


    def guid
      __return_value = LibGio.d_bus_connection_get_guid(to_unsafe.as(LibGio::DBusConnection*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def stream
      __return_value = LibGio.d_bus_connection_get_stream(to_unsafe.as(LibGio::DBusConnection*))
      Gio::IOStream.new(__return_value)
    end

    def unique_name
      __return_value = LibGio.d_bus_connection_get_unique_name(to_unsafe.as(LibGio::DBusConnection*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.new_finish(res) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_new_finish(res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      cast Gio::DBusConnection.new(__return_value)
    end

    def self.new_for_address_finish(res) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_new_for_address_finish(res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      cast Gio::DBusConnection.new(__return_value)
    end

    def self.new_for_address_sync(address, flags : Gio::DBusConnectionFlags, observer, cancellable) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_new_for_address_sync(address.to_unsafe, flags, observer ? observer.to_unsafe.as(LibGio::DBusAuthObserver*) : nil, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      cast Gio::DBusConnection.new(__return_value)
    end

    def self.new_sync(stream, guid, flags : Gio::DBusConnectionFlags, observer, cancellable) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_new_sync(stream.to_unsafe.as(LibGio::IOStream*), guid ? guid.to_unsafe : nil, flags, observer ? observer.to_unsafe.as(LibGio::DBusAuthObserver*) : nil, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      cast Gio::DBusConnection.new(__return_value)
    end

    def self.new(stream, guid, flags : Gio::DBusConnectionFlags, observer, cancellable, callback, user_data)
      LibGio.d_bus_connection_new(stream.to_unsafe.as(LibGio::IOStream*), guid ? guid.to_unsafe : nil, flags, observer ? observer.to_unsafe.as(LibGio::DBusAuthObserver*) : nil, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def self.new_for_address(address, flags : Gio::DBusConnectionFlags, observer, cancellable, callback, user_data)
      LibGio.d_bus_connection_new_for_address(address.to_unsafe, flags, observer ? observer.to_unsafe.as(LibGio::DBusAuthObserver*) : nil, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def add_filter(filter_function, user_data, user_data_free_func)
      __return_value = LibGio.d_bus_connection_add_filter(@pointer.as(LibGio::DBusConnection*), filter_function, user_data ? user_data : nil, user_data_free_func)
      __return_value
    end

    def call(bus_name, object_path, interface_name, method_name, parameters, reply_type, flags : Gio::DBusCallFlags, timeout_msec, cancellable, callback, user_data)
      LibGio.d_bus_connection_call(@pointer.as(LibGio::DBusConnection*), bus_name ? bus_name.to_unsafe : nil, object_path.to_unsafe, interface_name.to_unsafe, method_name.to_unsafe, parameters ? parameters.to_unsafe.as(LibGLib::Variant*) : nil, reply_type ? reply_type.to_unsafe.as(LibGLib::VariantType*) : nil, flags, Int32.new(timeout_msec), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def call_finish(res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_call_finish(@pointer.as(LibGio::DBusConnection*), res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      GLib::Variant.new(__return_value)
    end

    def call_sync(bus_name, object_path, interface_name, method_name, parameters, reply_type, flags : Gio::DBusCallFlags, timeout_msec, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_call_sync(@pointer.as(LibGio::DBusConnection*), bus_name ? bus_name.to_unsafe : nil, object_path.to_unsafe, interface_name.to_unsafe, method_name.to_unsafe, parameters ? parameters.to_unsafe.as(LibGLib::Variant*) : nil, reply_type ? reply_type.to_unsafe.as(LibGLib::VariantType*) : nil, flags, Int32.new(timeout_msec), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      GLib::Variant.new(__return_value)
    end

    def call_with_unix_fd_list(bus_name, object_path, interface_name, method_name, parameters, reply_type, flags : Gio::DBusCallFlags, timeout_msec, fd_list, cancellable, callback, user_data)
      LibGio.d_bus_connection_call_with_unix_fd_list(@pointer.as(LibGio::DBusConnection*), bus_name ? bus_name.to_unsafe : nil, object_path.to_unsafe, interface_name.to_unsafe, method_name.to_unsafe, parameters ? parameters.to_unsafe.as(LibGLib::Variant*) : nil, reply_type ? reply_type.to_unsafe.as(LibGLib::VariantType*) : nil, flags, Int32.new(timeout_msec), fd_list ? fd_list.to_unsafe.as(LibGio::UnixFDList*) : nil, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def call_with_unix_fd_list_finish(out_fd_list, res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_call_with_unix_fd_list_finish(@pointer.as(LibGio::DBusConnection*), out_fd_list, res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      GLib::Variant.new(__return_value)
    end

    def call_with_unix_fd_list_sync(bus_name, object_path, interface_name, method_name, parameters, reply_type, flags : Gio::DBusCallFlags, timeout_msec, fd_list, out_fd_list, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_call_with_unix_fd_list_sync(@pointer.as(LibGio::DBusConnection*), bus_name ? bus_name.to_unsafe : nil, object_path.to_unsafe, interface_name.to_unsafe, method_name.to_unsafe, parameters ? parameters.to_unsafe.as(LibGLib::Variant*) : nil, reply_type ? reply_type.to_unsafe.as(LibGLib::VariantType*) : nil, flags, Int32.new(timeout_msec), fd_list ? fd_list.to_unsafe.as(LibGio::UnixFDList*) : nil, out_fd_list, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      GLib::Variant.new(__return_value)
    end

    def close(cancellable, callback, user_data)
      LibGio.d_bus_connection_close(@pointer.as(LibGio::DBusConnection*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def close_finish(res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_close_finish(@pointer.as(LibGio::DBusConnection*), res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def close_sync(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_close_sync(@pointer.as(LibGio::DBusConnection*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def emit_signal(destination_bus_name, object_path, interface_name, signal_name, parameters)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_emit_signal(@pointer.as(LibGio::DBusConnection*), destination_bus_name ? destination_bus_name.to_unsafe : nil, object_path.to_unsafe, interface_name.to_unsafe, signal_name.to_unsafe, parameters ? parameters.to_unsafe.as(LibGLib::Variant*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def export_action_group(object_path, action_group)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_export_action_group(@pointer.as(LibGio::DBusConnection*), object_path.to_unsafe, action_group.to_unsafe.as(LibGio::ActionGroup*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def export_menu_model(object_path, menu)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_export_menu_model(@pointer.as(LibGio::DBusConnection*), object_path.to_unsafe, menu.to_unsafe.as(LibGio::MenuModel*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def flush(cancellable, callback, user_data)
      LibGio.d_bus_connection_flush(@pointer.as(LibGio::DBusConnection*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def flush_finish(res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_flush_finish(@pointer.as(LibGio::DBusConnection*), res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def flush_sync(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_flush_sync(@pointer.as(LibGio::DBusConnection*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def capabilities
      __return_value = LibGio.d_bus_connection_get_capabilities(@pointer.as(LibGio::DBusConnection*))
      __return_value
    end

    def exit_on_close
      __return_value = LibGio.d_bus_connection_get_exit_on_close(@pointer.as(LibGio::DBusConnection*))
      __return_value
    end

    def guid
      __return_value = LibGio.d_bus_connection_get_guid(@pointer.as(LibGio::DBusConnection*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def last_serial
      __return_value = LibGio.d_bus_connection_get_last_serial(@pointer.as(LibGio::DBusConnection*))
      __return_value
    end

    def peer_credentials
      __return_value = LibGio.d_bus_connection_get_peer_credentials(@pointer.as(LibGio::DBusConnection*))
      Gio::Credentials.new(__return_value) if __return_value
    end

    def stream
      __return_value = LibGio.d_bus_connection_get_stream(@pointer.as(LibGio::DBusConnection*))
      Gio::IOStream.new(__return_value)
    end

    def unique_name
      __return_value = LibGio.d_bus_connection_get_unique_name(@pointer.as(LibGio::DBusConnection*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def closed?
      __return_value = LibGio.d_bus_connection_is_closed(@pointer.as(LibGio::DBusConnection*))
      __return_value
    end

    def register_object(object_path, interface_info, method_call_closure, get_property_closure, set_property_closure)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_register_object(@pointer.as(LibGio::DBusConnection*), object_path.to_unsafe, interface_info.to_unsafe.as(LibGio::DBusInterfaceInfo*), method_call_closure ? method_call_closure.to_unsafe.as(LibGObject::Closure*) : nil, get_property_closure ? get_property_closure.to_unsafe.as(LibGObject::Closure*) : nil, set_property_closure ? set_property_closure.to_unsafe.as(LibGObject::Closure*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def register_subtree(object_path, vtable, flags : Gio::DBusSubtreeFlags, user_data, user_data_free_func)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_register_subtree(@pointer.as(LibGio::DBusConnection*), object_path.to_unsafe, vtable.to_unsafe.as(LibGio::DBusSubtreeVTable*), flags, user_data ? user_data : nil, user_data_free_func, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def remove_filter(filter_id)
      LibGio.d_bus_connection_remove_filter(@pointer.as(LibGio::DBusConnection*), UInt32.new(filter_id))
      nil
    end

    def send_message(message, flags : Gio::DBusSendMessageFlags, out_serial)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_send_message(@pointer.as(LibGio::DBusConnection*), message.to_unsafe.as(LibGio::DBusMessage*), flags, out_serial, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def send_message_with_reply(message, flags : Gio::DBusSendMessageFlags, timeout_msec, out_serial, cancellable, callback, user_data)
      LibGio.d_bus_connection_send_message_with_reply(@pointer.as(LibGio::DBusConnection*), message.to_unsafe.as(LibGio::DBusMessage*), flags, Int32.new(timeout_msec), out_serial, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def send_message_with_reply_finish(res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_send_message_with_reply_finish(@pointer.as(LibGio::DBusConnection*), res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::DBusMessage.new(__return_value)
    end

    def send_message_with_reply_sync(message, flags : Gio::DBusSendMessageFlags, timeout_msec, out_serial, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_connection_send_message_with_reply_sync(@pointer.as(LibGio::DBusConnection*), message.to_unsafe.as(LibGio::DBusMessage*), flags, Int32.new(timeout_msec), out_serial, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      Gio::DBusMessage.new(__return_value)
    end

    def exit_on_close=(exit_on_close)
      LibGio.d_bus_connection_set_exit_on_close(@pointer.as(LibGio::DBusConnection*), exit_on_close)
      nil
    end

    def signal_subscribe(sender, interface_name, member, object_path, arg0, flags : Gio::DBusSignalFlags, callback, user_data, user_data_free_func)
      __return_value = LibGio.d_bus_connection_signal_subscribe(@pointer.as(LibGio::DBusConnection*), sender ? sender.to_unsafe : nil, interface_name ? interface_name.to_unsafe : nil, member ? member.to_unsafe : nil, object_path ? object_path.to_unsafe : nil, arg0 ? arg0.to_unsafe : nil, flags, callback, user_data ? user_data : nil, user_data_free_func ? user_data_free_func : nil)
      __return_value
    end

    def signal_unsubscribe(subscription_id)
      LibGio.d_bus_connection_signal_unsubscribe(@pointer.as(LibGio::DBusConnection*), UInt32.new(subscription_id))
      nil
    end

    def start_message_processing
      LibGio.d_bus_connection_start_message_processing(@pointer.as(LibGio::DBusConnection*))
      nil
    end

    def unexport_action_group(export_id)
      LibGio.d_bus_connection_unexport_action_group(@pointer.as(LibGio::DBusConnection*), UInt32.new(export_id))
      nil
    end

    def unexport_menu_model(export_id)
      LibGio.d_bus_connection_unexport_menu_model(@pointer.as(LibGio::DBusConnection*), UInt32.new(export_id))
      nil
    end

    def unregister_object(registration_id)
      __return_value = LibGio.d_bus_connection_unregister_object(@pointer.as(LibGio::DBusConnection*), UInt32.new(registration_id))
      __return_value
    end

    def unregister_subtree(registration_id)
      __return_value = LibGio.d_bus_connection_unregister_subtree(@pointer.as(LibGio::DBusConnection*), UInt32.new(registration_id))
      __return_value
    end

    alias ClosedSignal = DBusConnection, Bool, LibGLib::Error* ->
    def on_closed(&__block : ClosedSignal)
      __callback = ->(_arg0 : LibGio::DBusConnection*, _arg1 : LibGio::Bool*, _arg2 : LibGio::LibGLib::Error***) {
       __return_value = __block.call(DBusConnection.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("closed", __callback)
    end

  end
end

