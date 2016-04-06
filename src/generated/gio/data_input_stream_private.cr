module Gio
  class DataInputStreamPrivate
    include GObject::WrappedType

    def initialize(@gio_data_input_stream_private)
    end

    def to_unsafe
      @gio_data_input_stream_private.not_nil!
    end

  end
end

