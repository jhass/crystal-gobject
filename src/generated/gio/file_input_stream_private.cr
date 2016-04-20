module Gio
  class FileInputStreamPrivate
    include GObject::WrappedType

    @gio_file_input_stream_private : LibGio::FileInputStreamPrivate*?
    def initialize(@gio_file_input_stream_private : LibGio::FileInputStreamPrivate*)
    end

    def to_unsafe
      @gio_file_input_stream_private.not_nil!
    end

  end
end

