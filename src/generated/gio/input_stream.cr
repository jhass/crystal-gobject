module Gio
  class InputStream < GObject::Object
    def initialize(@gio_input_stream)
    end

    def to_unsafe
      @gio_input_stream.not_nil!
    end

    def clear_pending
      __return_value = LibGio.input_stream_clear_pending((to_unsafe as LibGio::InputStream*))
      __return_value
    end

    def close(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.input_stream_close((to_unsafe as LibGio::InputStream*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def close_async(io_priority, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.input_stream_close_async((to_unsafe as LibGio::InputStream*), Int32.new(io_priority), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def close_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.input_stream_close_finish((to_unsafe as LibGio::InputStream*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def has_pending
      __return_value = LibGio.input_stream_has_pending((to_unsafe as LibGio::InputStream*))
      __return_value
    end

    def closed?
      __return_value = LibGio.input_stream_is_closed((to_unsafe as LibGio::InputStream*))
      __return_value
    end

    def read(buffer, count, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.input_stream_read((to_unsafe as LibGio::InputStream*), buffer, UInt64.new(count), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def read_all(buffer, count, bytes_read, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.input_stream_read_all((to_unsafe as LibGio::InputStream*), buffer, UInt64.new(count), UInt64.new(bytes_read), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def read_all_async(buffer, count, io_priority, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.input_stream_read_all_async((to_unsafe as LibGio::InputStream*), buffer, UInt64.new(count), Int32.new(io_priority), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def read_all_finish(result, bytes_read)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.input_stream_read_all_finish((to_unsafe as LibGio::InputStream*), (result.to_unsafe as LibGio::AsyncResult*), UInt64.new(bytes_read), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def read_async(buffer, count, io_priority, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.input_stream_read_async((to_unsafe as LibGio::InputStream*), buffer, UInt64.new(count), Int32.new(io_priority), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def read_bytes(count, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.input_stream_read_bytes((to_unsafe as LibGio::InputStream*), UInt64.new(count), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      GLib::Bytes.new(__return_value)
    end

    def read_bytes_async(count, io_priority, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.input_stream_read_bytes_async((to_unsafe as LibGio::InputStream*), UInt64.new(count), Int32.new(io_priority), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def read_bytes_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.input_stream_read_bytes_finish((to_unsafe as LibGio::InputStream*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      GLib::Bytes.new(__return_value)
    end

    def read_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.input_stream_read_finish((to_unsafe as LibGio::InputStream*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def pending=
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.input_stream_set_pending((to_unsafe as LibGio::InputStream*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def skip(count, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.input_stream_skip((to_unsafe as LibGio::InputStream*), UInt64.new(count), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def skip_async(count, io_priority, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.input_stream_skip_async((to_unsafe as LibGio::InputStream*), UInt64.new(count), Int32.new(io_priority), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def skip_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.input_stream_skip_finish((to_unsafe as LibGio::InputStream*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

  end
end

