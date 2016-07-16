module Gio
  class InputStreamPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::InputStreamPrivate*))
    end

    @gio_input_stream_private : LibGio::InputStreamPrivate*?
    def initialize(@gio_input_stream_private : LibGio::InputStreamPrivate*)
    end

    def to_unsafe
      @gio_input_stream_private.not_nil!
    end

  end
end

