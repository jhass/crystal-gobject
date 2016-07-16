module Gio
  class UnixOutputStreamPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::UnixOutputStreamPrivate*))
    end

    @gio_unix_output_stream_private : LibGio::UnixOutputStreamPrivate*?
    def initialize(@gio_unix_output_stream_private : LibGio::UnixOutputStreamPrivate*)
    end

    def to_unsafe
      @gio_unix_output_stream_private.not_nil!.as(Void*)
    end

  end
end

