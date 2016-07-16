module Gio
  class BufferedInputStreamPrivate
    include GObject::WrappedType

    @gio_buffered_input_stream_private : LibGio::BufferedInputStreamPrivate*?
    def initialize(@gio_buffered_input_stream_private : LibGio::BufferedInputStreamPrivate*)
    end

    def to_unsafe
      @gio_buffered_input_stream_private.not_nil!.as(Void*)
    end

  end
end

