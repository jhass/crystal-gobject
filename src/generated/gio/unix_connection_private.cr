module Gio
  class UnixConnectionPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::UnixConnectionPrivate*))
    end

    @gio_unix_connection_private : LibGio::UnixConnectionPrivate*?
    def initialize(@gio_unix_connection_private : LibGio::UnixConnectionPrivate*)
    end

    def to_unsafe
      @gio_unix_connection_private.not_nil!
    end

  end
end

