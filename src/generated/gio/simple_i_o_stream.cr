require "./i_o_stream"

module Gio
  class SimpleIOStream < IOStream
    @pointer : Void*
    def initialize(pointer : LibGio::SimpleIOStream*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::SimpleIOStream*)
    end

    def input_stream
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "input_stream", gvalue)
      Gio::InputStream.cast(gvalue.object)
    end

    def output_stream
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "output_stream", gvalue)
      Gio::OutputStream.cast(gvalue.object)
    end

    def self.new(input_stream, output_stream) : self
      __return_value = LibGio.simple_i_o_stream_new(input_stream.to_unsafe.as(LibGio::InputStream*), output_stream.to_unsafe.as(LibGio::OutputStream*))
      cast Gio::IOStream.new(__return_value)
    end

  end
end

