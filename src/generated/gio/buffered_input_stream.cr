require "./filter_input_stream"

module Gio
  class BufferedInputStream < FilterInputStream
    def initialize @gio_buffered_input_stream
    end

    def to_unsafe
      @gio_buffered_input_stream.not_nil!
    end

    # Implements Seekable

    def self.new_internal(base_stream)
      __return_value = LibGio.buffered_input_stream_new((base_stream.to_unsafe as LibGio::InputStream*))
      Gio::InputStream.new(__return_value)
    end

    def self.new_sized(base_stream, size)
      __return_value = LibGio.buffered_input_stream_new_sized((base_stream.to_unsafe as LibGio::InputStream*), UInt64.cast(size))
      Gio::InputStream.new(__return_value)
    end

    def fill(count, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.buffered_input_stream_fill((to_unsafe as LibGio::BufferedInputStream*), Int64.cast(count), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def fill_async(count, io_priority, cancellable, callback, user_data)
      __return_value = LibGio.buffered_input_stream_fill_async((to_unsafe as LibGio::BufferedInputStream*), Int64.cast(count), Int32.cast(io_priority), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def fill_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.buffered_input_stream_fill_finish((to_unsafe as LibGio::BufferedInputStream*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def available
      __return_value = LibGio.buffered_input_stream_get_available((to_unsafe as LibGio::BufferedInputStream*))
      __return_value
    end

    def buffer_size
      __return_value = LibGio.buffered_input_stream_get_buffer_size((to_unsafe as LibGio::BufferedInputStream*))
      __return_value
    end

    def peek(buffer, offset, count)
      __return_value = LibGio.buffered_input_stream_peek((to_unsafe as LibGio::BufferedInputStream*), buffer, UInt64.cast(offset), UInt64.cast(count))
      __return_value
    end

    def peek_buffer(count)
      __return_value = LibGio.buffered_input_stream_peek_buffer((to_unsafe as LibGio::BufferedInputStream*), UInt64.cast(count))
      PointerIterator.new(__return_value) {|__item_81| __item_81 }
    end

    def read_byte(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.buffered_input_stream_read_byte((to_unsafe as LibGio::BufferedInputStream*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def buffer_size=(size)
      __return_value = LibGio.buffered_input_stream_set_buffer_size((to_unsafe as LibGio::BufferedInputStream*), UInt64.cast(size))
      __return_value
    end

  end
end

