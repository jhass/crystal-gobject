module Gio
  class DataInputStreamPrivate
    include GObject::WrappedType

    @gio_data_input_stream_private : LibGio::DataInputStreamPrivate*?
    def initialize(@gio_data_input_stream_private : LibGio::DataInputStreamPrivate*)
    end

    def to_unsafe
      @gio_data_input_stream_private.not_nil!
    end

  end
end

