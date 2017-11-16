module Gio
  class OutputStream < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::OutputStream*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::OutputStream*)
    end

    def clear_pending
      LibGio.output_stream_clear_pending(@pointer.as(LibGio::OutputStream*))
      nil
    end

    def close(cancellable) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.output_stream_close(@pointer.as(LibGio::OutputStream*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def close_async(io_priority, cancellable, callback, user_data)
      LibGio.output_stream_close_async(@pointer.as(LibGio::OutputStream*), Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def close_finish(result) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.output_stream_close_finish(@pointer.as(LibGio::OutputStream*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def flush(cancellable) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.output_stream_flush(@pointer.as(LibGio::OutputStream*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def flush_async(io_priority, cancellable, callback, user_data)
      LibGio.output_stream_flush_async(@pointer.as(LibGio::OutputStream*), Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def flush_finish(result) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.output_stream_flush_finish(@pointer.as(LibGio::OutputStream*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def has_pending
      __return_value = LibGio.output_stream_has_pending(@pointer.as(LibGio::OutputStream*))
      __return_value
    end

    def closed?
      __return_value = LibGio.output_stream_is_closed(@pointer.as(LibGio::OutputStream*))
      __return_value
    end

    def closing?
      __return_value = LibGio.output_stream_is_closing(@pointer.as(LibGio::OutputStream*))
      __return_value
    end

    def pending= # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.output_stream_set_pending(@pointer.as(LibGio::OutputStream*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def splice(source, flags : Gio::OutputStreamSpliceFlags, cancellable) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.output_stream_splice(@pointer.as(LibGio::OutputStream*), source.to_unsafe.as(LibGio::InputStream*), flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def splice_async(source, flags : Gio::OutputStreamSpliceFlags, io_priority, cancellable, callback, user_data)
      LibGio.output_stream_splice_async(@pointer.as(LibGio::OutputStream*), source.to_unsafe.as(LibGio::InputStream*), flags, Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def splice_finish(result) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.output_stream_splice_finish(@pointer.as(LibGio::OutputStream*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def write(buffer, count, cancellable) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.output_stream_write(@pointer.as(LibGio::OutputStream*), buffer, UInt64.new(count), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def write_all(buffer, count, bytes_written, cancellable) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.output_stream_write_all(@pointer.as(LibGio::OutputStream*), buffer, UInt64.new(count), bytes_written, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def write_all_async(buffer, count, io_priority, cancellable, callback, user_data)
      LibGio.output_stream_write_all_async(@pointer.as(LibGio::OutputStream*), buffer, UInt64.new(count), Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def write_all_finish(result, bytes_written) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.output_stream_write_all_finish(@pointer.as(LibGio::OutputStream*), result.to_unsafe.as(LibGio::AsyncResult*), bytes_written, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def write_async(buffer, count, io_priority, cancellable, callback, user_data)
      LibGio.output_stream_write_async(@pointer.as(LibGio::OutputStream*), buffer, UInt64.new(count), Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def write_bytes(bytes, cancellable) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.output_stream_write_bytes(@pointer.as(LibGio::OutputStream*), bytes.to_unsafe.as(LibGLib::Bytes*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def write_bytes_async(bytes, io_priority, cancellable, callback, user_data)
      LibGio.output_stream_write_bytes_async(@pointer.as(LibGio::OutputStream*), bytes.to_unsafe.as(LibGLib::Bytes*), Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def write_bytes_finish(result) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.output_stream_write_bytes_finish(@pointer.as(LibGio::OutputStream*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def write_finish(result) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.output_stream_write_finish(@pointer.as(LibGio::OutputStream*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

  end
end

