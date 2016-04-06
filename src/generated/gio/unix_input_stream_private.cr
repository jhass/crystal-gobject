module Gio
  class UnixInputStreamPrivate
    include GObject::WrappedType

    def initialize(@gio_unix_input_stream_private)
    end

    def to_unsafe
      @gio_unix_input_stream_private.not_nil!
    end

  end
end

