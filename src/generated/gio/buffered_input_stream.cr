require "./filter_input_stream"

module Gio
  class BufferedInputStream < FilterInputStream
    @pointer : Void*
    def initialize(pointer : LibGio::BufferedInputStream*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::BufferedInputStream*)
    end

    # Implements Seekable
    def buffer_size
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "buffer_size", gvalue)
      gvalue
    end

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
      __return_value = LibGio.buffered_input_stream_fill(@pointer.as(LibGio::BufferedInputStream*), Int64.new(count), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def fill_async(count, io_priority, cancellable, callback, user_data)
      LibGio.buffered_input_stream_fill_async(@pointer.as(LibGio::BufferedInputStream*), Int64.new(count), Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def fill_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.buffered_input_stream_fill_finish(@pointer.as(LibGio::BufferedInputStream*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def available
      __return_value = LibGio.buffered_input_stream_get_available(@pointer.as(LibGio::BufferedInputStream*))
      __return_value
    end

    def buffer_size
      __return_value = LibGio.buffered_input_stream_get_buffer_size(@pointer.as(LibGio::BufferedInputStream*))
      __return_value
    end

    def peek(buffer, offset, count)
      __return_value = LibGio.buffered_input_stream_peek(@pointer.as(LibGio::BufferedInputStream*), buffer, UInt64.new(offset), UInt64.new(count))
      __return_value
    end

    def peek_buffer(count)
      __return_value = LibGio.buffered_input_stream_peek_buffer(@pointer.as(LibGio::BufferedInputStream*), count)
      PointerIterator.new(__return_value) {|__item| __item }
    end

    def read_byte(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.buffered_input_stream_read_byte(@pointer.as(LibGio::BufferedInputStream*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def buffer_size=(size)
      LibGio.buffered_input_stream_set_buffer_size(@pointer.as(LibGio::BufferedInputStream*), UInt64.new(size))
      nil
    end

  end
end

