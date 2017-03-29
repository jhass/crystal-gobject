module Gio
  class UnixOutputStreamPrivate
    include GObject::WrappedType

    @gio_unix_output_stream_private : LibGio::UnixOutputStreamPrivate*?
    def initialize(@gio_unix_output_stream_private : LibGio::UnixOutputStreamPrivate*)
    end

    def to_unsafe
      @gio_unix_output_stream_private.not_nil!
    end

  end
end

