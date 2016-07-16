module Gio
  class ConverterInputStreamPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::ConverterInputStreamPrivate*))
    end

    @gio_converter_input_stream_private : LibGio::ConverterInputStreamPrivate*?
    def initialize(@gio_converter_input_stream_private : LibGio::ConverterInputStreamPrivate*)
    end

    def to_unsafe
      @gio_converter_input_stream_private.not_nil!.as(Void*)
    end

  end
end

