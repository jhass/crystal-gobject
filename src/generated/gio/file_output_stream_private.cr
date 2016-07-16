module Gio
  class FileOutputStreamPrivate
    include GObject::WrappedType

    @gio_file_output_stream_private : LibGio::FileOutputStreamPrivate*?
    def initialize(@gio_file_output_stream_private : LibGio::FileOutputStreamPrivate*)
    end

    def to_unsafe
      @gio_file_output_stream_private.not_nil!.as(Void*)
    end

  end
end

