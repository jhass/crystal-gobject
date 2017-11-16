require "./filter_input_stream"

module Gio
  class ConverterInputStream < FilterInputStream
    @pointer : Void*
    def initialize(pointer : LibGio::ConverterInputStream*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::ConverterInputStream*)
    end

    # Implements PollableInputStream
    def converter
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "converter", gvalue)
      gvalue
    end

    def self.new(base_stream, converter) : self
      __return_value = LibGio.converter_input_stream_new(base_stream.to_unsafe.as(LibGio::InputStream*), converter.to_unsafe.as(LibGio::Converter*))
      cast Gio::InputStream.new(__return_value)
    end

    def converter
      __return_value = LibGio.converter_input_stream_get_converter(@pointer.as(LibGio::ConverterInputStream*))
      __return_value
    end

  end
end

