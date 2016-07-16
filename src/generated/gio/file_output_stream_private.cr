module Gio
  class FileOutputStreamPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::FileOutputStreamPrivate*))
    end

    @gio_file_output_stream_private : LibGio::FileOutputStreamPrivate*?
    def initialize(@gio_file_output_stream_private : LibGio::FileOutputStreamPrivate*)
    end

    def to_unsafe
      @gio_file_output_stream_private.not_nil!.as(Void*)
    end

  end
end

