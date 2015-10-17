module Gio
  class DBusMessage < GObject::Object
    def initialize @gio_d_bus_message
    end

    def to_unsafe
      @gio_d_bus_message.not_nil!
    end


    def self.new_internal
      __return_value = LibGio.d_bus_message_new
      Gio::DBusMessage.new(__return_value)
    end

    def self.new_from_blob(blob, blob_len, capabilities)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_message_new_from_blob(blob, UInt64.new(blob_len), capabilities, pointerof(__error))
      GLib::Error.assert __error
      Gio::DBusMessage.new(__return_value)
    end

    def self.new_method_call(name, path, interface, method)
      __return_value = LibGio.d_bus_message_new_method_call(name && name, path, interface && interface, method)
      Gio::DBusMessage.new(__return_value)
    end

    def self.new_signal(path, interface, signal)
      __return_value = LibGio.d_bus_message_new_signal(path, interface, signal)
      Gio::DBusMessage.new(__return_value)
    end

    def self.bytes_needed(blob, blob_len)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_message_bytes_needed(blob, UInt64.new(blob_len), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def copy
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_message_copy((to_unsafe as LibGio::DBusMessage*), pointerof(__error))
      GLib::Error.assert __error
      Gio::DBusMessage.new(__return_value)
    end

    def arg0
      __return_value = LibGio.d_bus_message_get_arg0((to_unsafe as LibGio::DBusMessage*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def body
      __return_value = LibGio.d_bus_message_get_body((to_unsafe as LibGio::DBusMessage*))
      GLib::Variant.new(__return_value)
    end

    def byte_order
      __return_value = LibGio.d_bus_message_get_byte_order((to_unsafe as LibGio::DBusMessage*))
      __return_value
    end

    def destination
      __return_value = LibGio.d_bus_message_get_destination((to_unsafe as LibGio::DBusMessage*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def error_name
      __return_value = LibGio.d_bus_message_get_error_name((to_unsafe as LibGio::DBusMessage*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def flags
      __return_value = LibGio.d_bus_message_get_flags((to_unsafe as LibGio::DBusMessage*))
      __return_value
    end

    def header(header_field)
      __return_value = LibGio.d_bus_message_get_header((to_unsafe as LibGio::DBusMessage*), header_field)
      GLib::Variant.new(__return_value)
    end

    def header_fields
      __return_value = LibGio.d_bus_message_get_header_fields((to_unsafe as LibGio::DBusMessage*))
      PointerIterator.new(__return_value) {|__item_79| __item_79 }
    end

    def interface
      __return_value = LibGio.d_bus_message_get_interface((to_unsafe as LibGio::DBusMessage*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def locked
      __return_value = LibGio.d_bus_message_get_locked((to_unsafe as LibGio::DBusMessage*))
      __return_value
    end

    def member
      __return_value = LibGio.d_bus_message_get_member((to_unsafe as LibGio::DBusMessage*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def message_type
      __return_value = LibGio.d_bus_message_get_message_type((to_unsafe as LibGio::DBusMessage*))
      __return_value
    end

    def num_unix_fds
      __return_value = LibGio.d_bus_message_get_num_unix_fds((to_unsafe as LibGio::DBusMessage*))
      __return_value
    end

    def path
      __return_value = LibGio.d_bus_message_get_path((to_unsafe as LibGio::DBusMessage*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def reply_serial
      __return_value = LibGio.d_bus_message_get_reply_serial((to_unsafe as LibGio::DBusMessage*))
      __return_value
    end

    def sender
      __return_value = LibGio.d_bus_message_get_sender((to_unsafe as LibGio::DBusMessage*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def serial
      __return_value = LibGio.d_bus_message_get_serial((to_unsafe as LibGio::DBusMessage*))
      __return_value
    end

    def signature
      __return_value = LibGio.d_bus_message_get_signature((to_unsafe as LibGio::DBusMessage*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def unix_fd_list
      __return_value = LibGio.d_bus_message_get_unix_fd_list((to_unsafe as LibGio::DBusMessage*))
      Gio::UnixFDList.new(__return_value)
    end

    def lock
      __return_value = LibGio.d_bus_message_lock((to_unsafe as LibGio::DBusMessage*))
      __return_value
    end

    def new_method_error_literal(error_name, error_message)
      __return_value = LibGio.d_bus_message_new_method_error_literal((to_unsafe as LibGio::DBusMessage*), error_name, error_message)
      Gio::DBusMessage.new(__return_value)
    end

    def new_method_reply
      __return_value = LibGio.d_bus_message_new_method_reply((to_unsafe as LibGio::DBusMessage*))
      Gio::DBusMessage.new(__return_value)
    end

    def print(indent)
      __return_value = LibGio.d_bus_message_print((to_unsafe as LibGio::DBusMessage*), UInt32.new(indent))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def body=(body)
      __return_value = LibGio.d_bus_message_set_body((to_unsafe as LibGio::DBusMessage*), (body.to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def byte_order=(byte_order)
      __return_value = LibGio.d_bus_message_set_byte_order((to_unsafe as LibGio::DBusMessage*), byte_order)
      __return_value
    end

    def destination=(value)
      __return_value = LibGio.d_bus_message_set_destination((to_unsafe as LibGio::DBusMessage*), value)
      __return_value
    end

    def error_name=(value)
      __return_value = LibGio.d_bus_message_set_error_name((to_unsafe as LibGio::DBusMessage*), value)
      __return_value
    end

    def flags=(flags)
      __return_value = LibGio.d_bus_message_set_flags((to_unsafe as LibGio::DBusMessage*), flags)
      __return_value
    end

    def set_header(header_field, value)
      __return_value = LibGio.d_bus_message_set_header((to_unsafe as LibGio::DBusMessage*), header_field, value && (value.to_unsafe as LibGLib::Variant*))
      __return_value
    end

    def interface=(value)
      __return_value = LibGio.d_bus_message_set_interface((to_unsafe as LibGio::DBusMessage*), value)
      __return_value
    end

    def member=(value)
      __return_value = LibGio.d_bus_message_set_member((to_unsafe as LibGio::DBusMessage*), value)
      __return_value
    end

    def message_type=(type)
      __return_value = LibGio.d_bus_message_set_message_type((to_unsafe as LibGio::DBusMessage*), type)
      __return_value
    end

    def num_unix_fds=(value)
      __return_value = LibGio.d_bus_message_set_num_unix_fds((to_unsafe as LibGio::DBusMessage*), UInt32.new(value))
      __return_value
    end

    def path=(value)
      __return_value = LibGio.d_bus_message_set_path((to_unsafe as LibGio::DBusMessage*), value)
      __return_value
    end

    def reply_serial=(value)
      __return_value = LibGio.d_bus_message_set_reply_serial((to_unsafe as LibGio::DBusMessage*), UInt32.new(value))
      __return_value
    end

    def sender=(value)
      __return_value = LibGio.d_bus_message_set_sender((to_unsafe as LibGio::DBusMessage*), value)
      __return_value
    end

    def serial=(serial)
      __return_value = LibGio.d_bus_message_set_serial((to_unsafe as LibGio::DBusMessage*), UInt32.new(serial))
      __return_value
    end

    def signature=(value)
      __return_value = LibGio.d_bus_message_set_signature((to_unsafe as LibGio::DBusMessage*), value)
      __return_value
    end

    def unix_fd_list=(fd_list)
      __return_value = LibGio.d_bus_message_set_unix_fd_list((to_unsafe as LibGio::DBusMessage*), fd_list && (fd_list.to_unsafe as LibGio::UnixFDList*))
      __return_value
    end

    def to_blob(out_size, capabilities)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_message_to_blob((to_unsafe as LibGio::DBusMessage*), UInt64.new(out_size), capabilities, pointerof(__error))
      GLib::Error.assert __error
      PointerIterator.new(__return_value) {|__item_92| __item_92 }
    end

    def to_gerror
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_message_to_gerror((to_unsafe as LibGio::DBusMessage*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

  end
end

