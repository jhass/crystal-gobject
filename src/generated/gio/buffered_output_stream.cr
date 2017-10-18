require "./filter_output_stream"

module Gio
  class BufferedOutputStream < FilterOutputStream
    @gio_buffered_output_stream : LibGio::BufferedOutputStream*?
    def initialize(@gio_buffered_output_stream : LibGio::BufferedOutputStream*)
    end

    def to_unsafe
      @gio_buffered_output_stream.not_nil!
    end

    # Implements Seekable
    def auto_grow
      __return_value = LibGio.buffered_output_stream_get_auto_grow(to_unsafe.as(LibGio::BufferedOutputStream*))
      __return_value
    end

    def buffer_size
      __return_value = LibGio.buffered_output_stream_get_buffer_size(to_unsafe.as(LibGio::BufferedOutputStream*))
      __return_value
    end

    def self.new(base_stream) : self
      __return_value = LibGio.buffered_output_stream_new(base_stream.to_unsafe.as(LibGio::OutputStream*))
      cast Gio::OutputStream.new(__return_value)
    end

    def self.new_sized(base_stream, size) : self
      __return_value = LibGio.buffered_output_stream_new_sized(base_stream.to_unsafe.as(LibGio::OutputStream*), UInt64.new(size))
      cast Gio::OutputStream.new(__return_value)
    end

    def auto_grow
      __return_value = LibGio.buffered_output_stream_get_auto_grow(to_unsafe.as(LibGio::BufferedOutputStream*))
      __return_value
    end

    def buffer_size
      __return_value = LibGio.buffered_output_stream_get_buffer_size(to_unsafe.as(LibGio::BufferedOutputStream*))
      __return_value
    end

    def auto_grow=(auto_grow)
      LibGio.buffered_output_stream_set_auto_grow(to_unsafe.as(LibGio::BufferedOutputStream*), auto_grow)
      nil
    end

    def buffer_size=(size)
      LibGio.buffered_output_stream_set_buffer_size(to_unsafe.as(LibGio::BufferedOutputStream*), UInt64.new(size))
      nil
    end

  end
end

