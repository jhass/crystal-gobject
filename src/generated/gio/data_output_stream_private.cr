module Gio
  class DataOutputStreamPrivate
    include GObject::WrappedType

    def initialize(@gio_data_output_stream_private)
    end

    def to_unsafe
      @gio_data_output_stream_private.not_nil!
    end

  end
end

