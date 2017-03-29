require "./filter_input_stream"

module Gio
  class BufferedInputStream < FilterInputStream
    @gio_buffered_input_stream : LibGio::BufferedInputStream*?
    def initialize(@gio_buffered_input_stream : LibGio::BufferedInputStream*)
    end

    def to_unsafe
      @gio_buffered_input_stream.not_nil!
    end

    # Implements Seekable

    def self.new(base_stream) : self
      __return_value = LibGio.buffered_input_stream_new(base_stream.to_unsafe.as(LibGio::InputStream*))
      cast Gio::InputStream.new(__return_value)
    end

    def self.new_sized(base_stream, size) : self
      __return_value = LibGio.buffered_input_stream_new_sized(base_stream.to_unsafe.as(LibGio::InputStream*), UInt64.new(size))
      cast Gio::InputStream.new(__return_value)
    end

    def fill(count, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.buffered_input_stream_fill(to_unsafe.as(LibGio::BufferedInputStream*), Int64.new(count), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def fill_async(count, io_priority, cancellable, callback, user_data)
      __return_value = LibGio.buffered_input_stream_fill_async(to_unsafe.as(LibGio::BufferedInputStream*), Int64.new(count), Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      __return_value
    end

    def fill_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.buffered_input_stream_fill_finish(to_unsafe.as(LibGio::BufferedInputStream*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def available
      __return_value = LibGio.buffered_input_stream_get_available(to_unsafe.as(LibGio::BufferedInputStream*))
      __return_value
    end

    def buffer_size
      __return_value = LibGio.buffered_input_stream_get_buffer_size(to_unsafe.as(LibGio::BufferedInputStream*))
      __return_value
    end

    def peek(buffer, offset, count)
      __return_value = LibGio.buffered_input_stream_peek(to_unsafe.as(LibGio::BufferedInputStream*), buffer, UInt64.new(offset), UInt64.new(count))
      __return_value
    end

    def peek_buffer(count)
      __return_value = LibGio.buffered_input_stream_peek_buffer(to_unsafe.as(LibGio::BufferedInputStream*), count)
      PointerIterator.new(__return_value) {|__item| __item }
    end

    def read_byte(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.buffered_input_stream_read_byte(to_unsafe.as(LibGio::BufferedInputStream*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def buffer_size=(size)
      __return_value = LibGio.buffered_input_stream_set_buffer_size(to_unsafe.as(LibGio::BufferedInputStream*), UInt64.new(size))
      __return_value
    end

  end
end

