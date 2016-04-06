module Gio
  class FileInputStreamPrivate
    include GObject::WrappedType

    def initialize(@gio_file_input_stream_private)
    end

    def to_unsafe
      @gio_file_input_stream_private.not_nil!
    end

  end
end

