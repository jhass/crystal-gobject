module Gio
  class BufferedOutputStreamPrivate
    include GObject::WrappedType

    @gio_buffered_output_stream_private : LibGio::BufferedOutputStreamPrivate*?
    def initialize(@gio_buffered_output_stream_private : LibGio::BufferedOutputStreamPrivate*)
    end

    def to_unsafe
      @gio_buffered_output_stream_private.not_nil!
    end

  end
end

