module Gio
  class BufferedOutputStreamPrivate
    include GObject::WrappedType

    def initialize(@gio_buffered_output_stream_private)
    end

    def to_unsafe
      @gio_buffered_output_stream_private.not_nil!
    end

  end
end

