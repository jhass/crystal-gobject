module Gio
  class ConverterOutputStreamPrivate
    include GObject::WrappedType

    def initialize(@gio_converter_output_stream_private)
    end

    def to_unsafe
      @gio_converter_output_stream_private.not_nil!
    end

  end
end

