module Gio
  class InputStream < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::InputStream*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::InputStream*)
    end

    def clear_pending
      LibGio.input_stream_clear_pending(@pointer.as(LibGio::InputStream*))
      nil
    end

    def close(cancellable) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.input_stream_close(@pointer.as(LibGio::InputStream*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def close_async(io_priority, cancellable, callback, user_data)
      LibGio.input_stream_close_async(@pointer.as(LibGio::InputStream*), Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def close_finish(result) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.input_stream_close_finish(@pointer.as(LibGio::InputStream*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def has_pending
      __return_value = LibGio.input_stream_has_pending(@pointer.as(LibGio::InputStream*))
      __return_value
    end

    def closed?
      __return_value = LibGio.input_stream_is_closed(@pointer.as(LibGio::InputStream*))
      __return_value
    end

    def read(buffer, count, cancellable) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.input_stream_read(@pointer.as(LibGio::InputStream*), buffer, UInt64.new(count), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def read_all(buffer, count, bytes_read, cancellable) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.input_stream_read_all(@pointer.as(LibGio::InputStream*), buffer, UInt64.new(count), bytes_read, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def read_all_async(buffer, count, io_priority, cancellable, callback, user_data)
      LibGio.input_stream_read_all_async(@pointer.as(LibGio::InputStream*), buffer, UInt64.new(count), Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def read_all_finish(result, bytes_read) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.input_stream_read_all_finish(@pointer.as(LibGio::InputStream*), result.to_unsafe.as(LibGio::AsyncResult*), bytes_read, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def read_async(buffer, count, io_priority, cancellable, callback, user_data)
      LibGio.input_stream_read_async(@pointer.as(LibGio::InputStream*), buffer, UInt64.new(count), Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def read_bytes(count, cancellable) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.input_stream_read_bytes(@pointer.as(LibGio::InputStream*), UInt64.new(count), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      GLib::Bytes.new(__return_value)
    end

    def read_bytes_async(count, io_priority, cancellable, callback, user_data)
      LibGio.input_stream_read_bytes_async(@pointer.as(LibGio::InputStream*), UInt64.new(count), Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def read_bytes_finish(result) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.input_stream_read_bytes_finish(@pointer.as(LibGio::InputStream*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      GLib::Bytes.new(__return_value)
    end

    def read_finish(result) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.input_stream_read_finish(@pointer.as(LibGio::InputStream*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def pending= # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.input_stream_set_pending(@pointer.as(LibGio::InputStream*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def skip(count, cancellable) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.input_stream_skip(@pointer.as(LibGio::InputStream*), UInt64.new(count), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def skip_async(count, io_priority, cancellable, callback, user_data)
      LibGio.input_stream_skip_async(@pointer.as(LibGio::InputStream*), UInt64.new(count), Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def skip_finish(result) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.input_stream_skip_finish(@pointer.as(LibGio::InputStream*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

  end
end

