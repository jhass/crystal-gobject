module Gio
  class FileInputStreamPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::FileInputStreamPrivate*))
    end

    @gio_file_input_stream_private : LibGio::FileInputStreamPrivate*?
    def initialize(@gio_file_input_stream_private : LibGio::FileInputStreamPrivate*)
    end

    def to_unsafe
      @gio_file_input_stream_private.not_nil!
    end

  end
end

