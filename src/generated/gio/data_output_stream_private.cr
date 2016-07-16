module Gio
  class DataOutputStreamPrivate
    include GObject::WrappedType

    @gio_data_output_stream_private : LibGio::DataOutputStreamPrivate*?
    def initialize(@gio_data_output_stream_private : LibGio::DataOutputStreamPrivate*)
    end

    def to_unsafe
      @gio_data_output_stream_private.not_nil!.as(Void*)
    end

  end
end

