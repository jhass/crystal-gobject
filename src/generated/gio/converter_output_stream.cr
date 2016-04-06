require "./filter_output_stream"

module Gio
  class ConverterOutputStream < FilterOutputStream
    def initialize(@gio_converter_output_stream)
    end

    def to_unsafe
      @gio_converter_output_stream.not_nil!
    end

    # Implements PollableOutputStream

    def self.new_internal(base_stream, converter)
      __return_value = LibGio.converter_output_stream_new((base_stream.to_unsafe as LibGio::OutputStream*), (converter.to_unsafe as LibGio::Converter*))
      Gio::OutputStream.new(__return_value)
    end

    def converter
      __return_value = LibGio.converter_output_stream_get_converter((to_unsafe as LibGio::ConverterOutputStream*))
      __return_value
    end

  end
end

