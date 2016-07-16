module Gio
  class DataInputStreamPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::DataInputStreamPrivate*))
    end

    @gio_data_input_stream_private : LibGio::DataInputStreamPrivate*?
    def initialize(@gio_data_input_stream_private : LibGio::DataInputStreamPrivate*)
    end

    def to_unsafe
      @gio_data_input_stream_private.not_nil!
    end

  end
end

