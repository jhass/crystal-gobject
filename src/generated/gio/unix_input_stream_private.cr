module Gio
  class UnixInputStreamPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::UnixInputStreamPrivate*))
    end

    @gio_unix_input_stream_private : LibGio::UnixInputStreamPrivate*?
    def initialize(@gio_unix_input_stream_private : LibGio::UnixInputStreamPrivate*)
    end

    def to_unsafe
      @gio_unix_input_stream_private.not_nil!.as(Void*)
    end

  end
end

