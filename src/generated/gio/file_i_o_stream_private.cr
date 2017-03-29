module Gio
  class FileIOStreamPrivate
    include GObject::WrappedType

    @gio_file_i_o_stream_private : LibGio::FileIOStreamPrivate*?
    def initialize(@gio_file_i_o_stream_private : LibGio::FileIOStreamPrivate*)
    end

    def to_unsafe
      @gio_file_i_o_stream_private.not_nil!
    end

  end
end

