module Gio
  class ConverterOutputStreamPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::ConverterOutputStreamPrivate*))
    end

    @gio_converter_output_stream_private : LibGio::ConverterOutputStreamPrivate*?
    def initialize(@gio_converter_output_stream_private : LibGio::ConverterOutputStreamPrivate*)
    end

    def to_unsafe
      @gio_converter_output_stream_private.not_nil!.as(Void*)
    end

  end
end

