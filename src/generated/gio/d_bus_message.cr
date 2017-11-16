module Gio
  class DBusMessage < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::DBusMessage*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::DBusMessage*)
    end

    def locked
      __return_value = LibGio.d_bus_message_get_locked(to_unsafe.as(LibGio::DBusMessage*))
      __return_value
    end

    def self.new : self
      __return_value = LibGio.d_bus_message_new
      cast Gio::DBusMessage.new(__return_value)
    end

    def self.new_from_blob(blob, blob_len, capabilities : Gio::DBusCapabilityFlags) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_message_new_from_blob(blob, UInt64.new(blob_len), capabilities, pointerof(__error))
      GLib::Error.assert __error
      cast Gio::DBusMessage.new(__return_value)
    end

    def self.new_method_call(name, path, interface, method) : self
      __return_value = LibGio.d_bus_message_new_method_call(name ? name.to_unsafe : nil, path.to_unsafe, interface ? interface.to_unsafe : nil, method.to_unsafe)
      cast Gio::DBusMessage.new(__return_value)
    end

    def self.new_signal(path, interface, signal) : self
      __return_value = LibGio.d_bus_message_new_signal(path.to_unsafe, interface.to_unsafe, signal.to_unsafe)
      cast Gio::DBusMessage.new(__return_value)
    end

    def self.bytes_needed(blob, blob_len)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_message_bytes_needed(blob, UInt64.new(blob_len), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def copy
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_message_copy(@pointer.as(LibGio::DBusMessage*), pointerof(__error))
      GLib::Error.assert __error
      Gio::DBusMessage.new(__return_value)
    end

    def arg0
      __return_value = LibGio.d_bus_message_get_arg0(@pointer.as(LibGio::DBusMessage*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def body
      __return_value = LibGio.d_bus_message_get_body(@pointer.as(LibGio::DBusMessage*))
      GLib::Variant.new(__return_value)
    end

    def byte_order
      __return_value = LibGio.d_bus_message_get_byte_order(@pointer.as(LibGio::DBusMessage*))
      __return_value
    end

    def destination
      __return_value = LibGio.d_bus_message_get_destination(@pointer.as(LibGio::DBusMessage*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def error_name
      __return_value = LibGio.d_bus_message_get_error_name(@pointer.as(LibGio::DBusMessage*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def flags
      __return_value = LibGio.d_bus_message_get_flags(@pointer.as(LibGio::DBusMessage*))
      __return_value
    end

    def header(header_field : Gio::DBusMessageHeaderField)
      __return_value = LibGio.d_bus_message_get_header(@pointer.as(LibGio::DBusMessage*), header_field)
      GLib::Variant.new(__return_value)
    end

    def header_fields
      __return_value = LibGio.d_bus_message_get_header_fields(@pointer.as(LibGio::DBusMessage*))
      PointerIterator.new(__return_value) {|__item| __item }
    end

    def interface
      __return_value = LibGio.d_bus_message_get_interface(@pointer.as(LibGio::DBusMessage*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def locked
      __return_value = LibGio.d_bus_message_get_locked(@pointer.as(LibGio::DBusMessage*))
      __return_value
    end

    def member
      __return_value = LibGio.d_bus_message_get_member(@pointer.as(LibGio::DBusMessage*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def message_type
      __return_value = LibGio.d_bus_message_get_message_type(@pointer.as(LibGio::DBusMessage*))
      __return_value
    end

    def num_unix_fds
      __return_value = LibGio.d_bus_message_get_num_unix_fds(@pointer.as(LibGio::DBusMessage*))
      __return_value
    end

    def path
      __return_value = LibGio.d_bus_message_get_path(@pointer.as(LibGio::DBusMessage*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def reply_serial
      __return_value = LibGio.d_bus_message_get_reply_serial(@pointer.as(LibGio::DBusMessage*))
      __return_value
    end

    def sender
      __return_value = LibGio.d_bus_message_get_sender(@pointer.as(LibGio::DBusMessage*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def serial
      __return_value = LibGio.d_bus_message_get_serial(@pointer.as(LibGio::DBusMessage*))
      __return_value
    end

    def signature
      __return_value = LibGio.d_bus_message_get_signature(@pointer.as(LibGio::DBusMessage*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def unix_fd_list
      __return_value = LibGio.d_bus_message_get_unix_fd_list(@pointer.as(LibGio::DBusMessage*))
      Gio::UnixFDList.new(__return_value)
    end

    def lock
      LibGio.d_bus_message_lock(@pointer.as(LibGio::DBusMessage*))
      nil
    end

    def new_method_error_literal(error_name, error_message)
      __return_value = LibGio.d_bus_message_new_method_error_literal(@pointer.as(LibGio::DBusMessage*), error_name.to_unsafe, error_message.to_unsafe)
      Gio::DBusMessage.new(__return_value)
    end

    def new_method_reply
      __return_value = LibGio.d_bus_message_new_method_reply(@pointer.as(LibGio::DBusMessage*))
      Gio::DBusMessage.new(__return_value)
    end

    def print(indent)
      __return_value = LibGio.d_bus_message_print(@pointer.as(LibGio::DBusMessage*), UInt32.new(indent))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def body=(body)
      LibGio.d_bus_message_set_body(@pointer.as(LibGio::DBusMessage*), body.to_unsafe.as(LibGLib::Variant*))
      nil
    end

    def byte_order=(byte_order : Gio::DBusMessageByteOrder)
      LibGio.d_bus_message_set_byte_order(@pointer.as(LibGio::DBusMessage*), byte_order)
      nil
    end

    def destination=(value)
      LibGio.d_bus_message_set_destination(@pointer.as(LibGio::DBusMessage*), value.to_unsafe)
      nil
    end

    def error_name=(value)
      LibGio.d_bus_message_set_error_name(@pointer.as(LibGio::DBusMessage*), value.to_unsafe)
      nil
    end

    def flags=(flags : Gio::DBusMessageFlags)
      LibGio.d_bus_message_set_flags(@pointer.as(LibGio::DBusMessage*), flags)
      nil
    end

    def set_header(header_field : Gio::DBusMessageHeaderField, value)
      LibGio.d_bus_message_set_header(@pointer.as(LibGio::DBusMessage*), header_field, value ? value.to_unsafe.as(LibGLib::Variant*) : nil)
      nil
    end

    def interface=(value)
      LibGio.d_bus_message_set_interface(@pointer.as(LibGio::DBusMessage*), value.to_unsafe)
      nil
    end

    def member=(value)
      LibGio.d_bus_message_set_member(@pointer.as(LibGio::DBusMessage*), value.to_unsafe)
      nil
    end

    def message_type=(type : Gio::DBusMessageType)
      LibGio.d_bus_message_set_message_type(@pointer.as(LibGio::DBusMessage*), type)
      nil
    end

    def num_unix_fds=(value)
      LibGio.d_bus_message_set_num_unix_fds(@pointer.as(LibGio::DBusMessage*), UInt32.new(value))
      nil
    end

    def path=(value)
      LibGio.d_bus_message_set_path(@pointer.as(LibGio::DBusMessage*), value.to_unsafe)
      nil
    end

    def reply_serial=(value)
      LibGio.d_bus_message_set_reply_serial(@pointer.as(LibGio::DBusMessage*), UInt32.new(value))
      nil
    end

    def sender=(value)
      LibGio.d_bus_message_set_sender(@pointer.as(LibGio::DBusMessage*), value.to_unsafe)
      nil
    end

    def serial=(serial)
      LibGio.d_bus_message_set_serial(@pointer.as(LibGio::DBusMessage*), UInt32.new(serial))
      nil
    end

    def signature=(value)
      LibGio.d_bus_message_set_signature(@pointer.as(LibGio::DBusMessage*), value.to_unsafe)
      nil
    end

    def unix_fd_list=(fd_list)
      LibGio.d_bus_message_set_unix_fd_list(@pointer.as(LibGio::DBusMessage*), fd_list ? fd_list.to_unsafe.as(LibGio::UnixFDList*) : nil)
      nil
    end

    def to_blob(out_size, capabilities : Gio::DBusCapabilityFlags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_message_to_blob(@pointer.as(LibGio::DBusMessage*), out_size, capabilities, pointerof(__error))
      GLib::Error.assert __error
      PointerIterator.new(__return_value) {|__item| __item }
    end

    def to_gerror
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_message_to_gerror(@pointer.as(LibGio::DBusMessage*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

  end
end

