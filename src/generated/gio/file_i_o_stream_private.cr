module Gio
  class FileIOStreamPrivate
    include GObject::WrappedType

    def initialize(@gio_file_i_o_stream_private)
    end

    def to_unsafe
      @gio_file_i_o_stream_private.not_nil!
    end

  end
end

