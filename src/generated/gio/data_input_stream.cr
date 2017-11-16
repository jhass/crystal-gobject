require "./buffered_input_stream"

module Gio
  class DataInputStream < BufferedInputStream
    @pointer : Void*
    def initialize(pointer : LibGio::DataInputStream*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::DataInputStream*)
    end

    # Implements Seekable
    def byte_order
      __return_value = LibGio.data_input_stream_get_byte_order(to_unsafe.as(LibGio::DataInputStream*))
      __return_value
    end

    def newline_type
      __return_value = LibGio.data_input_stream_get_newline_type(to_unsafe.as(LibGio::DataInputStream*))
      __return_value
    end

    def self.new(base_stream) : self
      __return_value = LibGio.data_input_stream_new(base_stream.to_unsafe.as(LibGio::InputStream*))
      cast Gio::DataInputStream.new(__return_value)
    end

    def byte_order
      __return_value = LibGio.data_input_stream_get_byte_order(@pointer.as(LibGio::DataInputStream*))
      __return_value
    end

    def newline_type
      __return_value = LibGio.data_input_stream_get_newline_type(@pointer.as(LibGio::DataInputStream*))
      __return_value
    end

    def read_byte(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.data_input_stream_read_byte(@pointer.as(LibGio::DataInputStream*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def read_int16(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.data_input_stream_read_int16(@pointer.as(LibGio::DataInputStream*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def read_int32(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.data_input_stream_read_int32(@pointer.as(LibGio::DataInputStream*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def read_int64(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.data_input_stream_read_int64(@pointer.as(LibGio::DataInputStream*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def read_line(length, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.data_input_stream_read_line(@pointer.as(LibGio::DataInputStream*), length, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      PointerIterator.new(__return_value) {|__item| __item } if __return_value
    end

    def read_line_async(io_priority, cancellable, callback, user_data)
      LibGio.data_input_stream_read_line_async(@pointer.as(LibGio::DataInputStream*), Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def read_line_finish(result, length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.data_input_stream_read_line_finish(@pointer.as(LibGio::DataInputStream*), result.to_unsafe.as(LibGio::AsyncResult*), length, pointerof(__error))
      GLib::Error.assert __error
      PointerIterator.new(__return_value) {|__item| __item } if __return_value
    end

    def read_line_finish_utf8(result, length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.data_input_stream_read_line_finish_utf8(@pointer.as(LibGio::DataInputStream*), result.to_unsafe.as(LibGio::AsyncResult*), length, pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def read_line_utf8(length, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.data_input_stream_read_line_utf8(@pointer.as(LibGio::DataInputStream*), length, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def read_uint16(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.data_input_stream_read_uint16(@pointer.as(LibGio::DataInputStream*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def read_uint32(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.data_input_stream_read_uint32(@pointer.as(LibGio::DataInputStream*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def read_uint64(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.data_input_stream_read_uint64(@pointer.as(LibGio::DataInputStream*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def read_until(stop_chars, length, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.data_input_stream_read_until(@pointer.as(LibGio::DataInputStream*), stop_chars.to_unsafe, length, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def read_until_async(stop_chars, io_priority, cancellable, callback, user_data)
      LibGio.data_input_stream_read_until_async(@pointer.as(LibGio::DataInputStream*), stop_chars.to_unsafe, Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def read_until_finish(result, length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.data_input_stream_read_until_finish(@pointer.as(LibGio::DataInputStream*), result.to_unsafe.as(LibGio::AsyncResult*), length, pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def read_upto(stop_chars, stop_chars_len, length, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.data_input_stream_read_upto(@pointer.as(LibGio::DataInputStream*), stop_chars.to_unsafe, Int64.new(stop_chars_len), length, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def read_upto_async(stop_chars, stop_chars_len, io_priority, cancellable, callback, user_data)
      LibGio.data_input_stream_read_upto_async(@pointer.as(LibGio::DataInputStream*), stop_chars.to_unsafe, Int64.new(stop_chars_len), Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def read_upto_finish(result, length)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.data_input_stream_read_upto_finish(@pointer.as(LibGio::DataInputStream*), result.to_unsafe.as(LibGio::AsyncResult*), length, pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def byte_order=(order : Gio::DataStreamByteOrder)
      LibGio.data_input_stream_set_byte_order(@pointer.as(LibGio::DataInputStream*), order)
      nil
    end

    def newline_type=(type : Gio::DataStreamNewlineType)
      LibGio.data_input_stream_set_newline_type(@pointer.as(LibGio::DataInputStream*), type)
      nil
    end

  end
end

