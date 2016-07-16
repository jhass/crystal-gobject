module Gio
  class UnixInputStreamPrivate
    include GObject::WrappedType

    @gio_unix_input_stream_private : LibGio::UnixInputStreamPrivate*?
    def initialize(@gio_unix_input_stream_private : LibGio::UnixInputStreamPrivate*)
    end

    def to_unsafe
      @gio_unix_input_stream_private.not_nil!.as(Void*)
    end

  end
end

