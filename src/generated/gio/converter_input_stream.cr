require "./filter_input_stream"

module Gio
  class ConverterInputStream < FilterInputStream
    def initialize(@gio_converter_input_stream)
    end

    def to_unsafe
      @gio_converter_input_stream.not_nil!
    end

    # Implements PollableInputStream

    def self.new_internal(base_stream, converter)
      __return_value = LibGio.converter_input_stream_new((base_stream.to_unsafe as LibGio::InputStream*), (converter.to_unsafe as LibGio::Converter*))
      Gio::InputStream.new(__return_value)
    end

    def converter
      __return_value = LibGio.converter_input_stream_get_converter((to_unsafe as LibGio::ConverterInputStream*))
      __return_value
    end

  end
end

