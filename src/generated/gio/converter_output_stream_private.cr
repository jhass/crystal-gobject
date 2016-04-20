module Gio
  class ConverterOutputStreamPrivate
    include GObject::WrappedType

    @gio_converter_output_stream_private : LibGio::ConverterOutputStreamPrivate*?
    def initialize(@gio_converter_output_stream_private : LibGio::ConverterOutputStreamPrivate*)
    end

    def to_unsafe
      @gio_converter_output_stream_private.not_nil!
    end

  end
end

