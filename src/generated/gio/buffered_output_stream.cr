require "./filter_output_stream"

module Gio
  class BufferedOutputStream < FilterOutputStream
    @pointer : Void*
    def initialize(pointer : LibGio::BufferedOutputStream*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::BufferedOutputStream*)
    end

    # Implements Seekable
    def auto_grow
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "auto_grow", gvalue)
      gvalue.boolean
    end

    def buffer_size
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "buffer_size", gvalue)
      gvalue
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
      __return_value = LibGio.buffered_output_stream_get_auto_grow(@pointer.as(LibGio::BufferedOutputStream*))
      __return_value
    end

    def buffer_size
      __return_value = LibGio.buffered_output_stream_get_buffer_size(@pointer.as(LibGio::BufferedOutputStream*))
      __return_value
    end

    def auto_grow=(auto_grow)
      LibGio.buffered_output_stream_set_auto_grow(@pointer.as(LibGio::BufferedOutputStream*), auto_grow)
      nil
    end

    def buffer_size=(size)
      LibGio.buffered_output_stream_set_buffer_size(@pointer.as(LibGio::BufferedOutputStream*), UInt64.new(size))
      nil
    end

  end
end

