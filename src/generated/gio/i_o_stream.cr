module Gio
  class IOStream < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::IOStream*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::IOStream*)
    end

    def closed
      __return_value = LibGio.i_o_stream_get_closed(to_unsafe.as(LibGio::IOStream*))
      __return_value
    end

    def input_stream
      __return_value = LibGio.i_o_stream_get_input_stream(to_unsafe.as(LibGio::IOStream*))
      Gio::InputStream.new(__return_value)
    end

    def output_stream
      __return_value = LibGio.i_o_stream_get_output_stream(to_unsafe.as(LibGio::IOStream*))
      Gio::OutputStream.new(__return_value)
    end

    def self.splice_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.i_o_stream_splice_finish(result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def clear_pending
      LibGio.i_o_stream_clear_pending(@pointer.as(LibGio::IOStream*))
      nil
    end

    def close(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.i_o_stream_close(@pointer.as(LibGio::IOStream*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def close_async(io_priority, cancellable, callback, user_data)
      LibGio.i_o_stream_close_async(@pointer.as(LibGio::IOStream*), Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def close_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.i_o_stream_close_finish(@pointer.as(LibGio::IOStream*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def input_stream
      __return_value = LibGio.i_o_stream_get_input_stream(@pointer.as(LibGio::IOStream*))
      Gio::InputStream.new(__return_value)
    end

    def output_stream
      __return_value = LibGio.i_o_stream_get_output_stream(@pointer.as(LibGio::IOStream*))
      Gio::OutputStream.new(__return_value)
    end

    def has_pending
      __return_value = LibGio.i_o_stream_has_pending(@pointer.as(LibGio::IOStream*))
      __return_value
    end

    def closed?
      __return_value = LibGio.i_o_stream_is_closed(@pointer.as(LibGio::IOStream*))
      __return_value
    end

    def pending=
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.i_o_stream_set_pending(@pointer.as(LibGio::IOStream*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def splice_async(stream2, flags : Gio::IOStreamSpliceFlags, io_priority, cancellable, callback, user_data)
      LibGio.i_o_stream_splice_async(@pointer.as(LibGio::IOStream*), stream2.to_unsafe.as(LibGio::IOStream*), flags, Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

  end
end

