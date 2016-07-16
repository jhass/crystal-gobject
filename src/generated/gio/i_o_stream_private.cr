module Gio
  class IOStreamPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::IOStreamPrivate*))
    end

    @gio_i_o_stream_private : LibGio::IOStreamPrivate*?
    def initialize(@gio_i_o_stream_private : LibGio::IOStreamPrivate*)
    end

    def to_unsafe
      @gio_i_o_stream_private.not_nil!
    end

  end
end

