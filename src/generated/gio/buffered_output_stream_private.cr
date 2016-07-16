module Gio
  class BufferedOutputStreamPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::BufferedOutputStreamPrivate*))
    end

    @gio_buffered_output_stream_private : LibGio::BufferedOutputStreamPrivate*?
    def initialize(@gio_buffered_output_stream_private : LibGio::BufferedOutputStreamPrivate*)
    end

    def to_unsafe
      @gio_buffered_output_stream_private.not_nil!
    end

  end
end

