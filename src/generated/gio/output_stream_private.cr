module Gio
  class OutputStreamPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::OutputStreamPrivate*))
    end

    @gio_output_stream_private : LibGio::OutputStreamPrivate*?
    def initialize(@gio_output_stream_private : LibGio::OutputStreamPrivate*)
    end

    def to_unsafe
      @gio_output_stream_private.not_nil!.as(Void*)
    end

  end
end

