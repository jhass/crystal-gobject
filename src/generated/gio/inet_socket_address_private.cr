module Gio
  class InetSocketAddressPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::InetSocketAddressPrivate*))
    end

    @gio_inet_socket_address_private : LibGio::InetSocketAddressPrivate*?
    def initialize(@gio_inet_socket_address_private : LibGio::InetSocketAddressPrivate*)
    end

    def to_unsafe
      @gio_inet_socket_address_private.not_nil!.as(Void*)
    end

  end
end

