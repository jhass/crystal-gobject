module Gio
  class ConverterInputStreamPrivate
    include GObject::WrappedType

    @gio_converter_input_stream_private : LibGio::ConverterInputStreamPrivate*?
    def initialize(@gio_converter_input_stream_private : LibGio::ConverterInputStreamPrivate*)
    end

    def to_unsafe
      @gio_converter_input_stream_private.not_nil!.as(Void*)
    end

  end
end

