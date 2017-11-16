require "./filter_output_stream"

module Gio
  class ConverterOutputStream < FilterOutputStream
    @pointer : Void*
    def initialize(pointer : LibGio::ConverterOutputStream*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::ConverterOutputStream*)
    end

    # Implements PollableOutputStream
    def converter
      __return_value = LibGio.converter_output_stream_get_converter(to_unsafe.as(LibGio::ConverterOutputStream*))
      __return_value
    end

    def self.new(base_stream, converter) : self
      __return_value = LibGio.converter_output_stream_new(base_stream.to_unsafe.as(LibGio::OutputStream*), converter.to_unsafe.as(LibGio::Converter*))
      cast Gio::OutputStream.new(__return_value)
    end

    def converter
      __return_value = LibGio.converter_output_stream_get_converter(@pointer.as(LibGio::ConverterOutputStream*))
      __return_value
    end

  end
end

