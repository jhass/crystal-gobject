module Gio
  class DataOutputStreamPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::DataOutputStreamPrivate*))
    end

    @gio_data_output_stream_private : LibGio::DataOutputStreamPrivate*?
    def initialize(@gio_data_output_stream_private : LibGio::DataOutputStreamPrivate*)
    end

    def to_unsafe
      @gio_data_output_stream_private.not_nil!
    end

  end
end

