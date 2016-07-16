module Gio
  class UnixSocketAddressPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::UnixSocketAddressPrivate*))
    end

    @gio_unix_socket_address_private : LibGio::UnixSocketAddressPrivate*?
    def initialize(@gio_unix_socket_address_private : LibGio::UnixSocketAddressPrivate*)
    end

    def to_unsafe
      @gio_unix_socket_address_private.not_nil!
    end

  end
end

