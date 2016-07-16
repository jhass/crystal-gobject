module Gio
  class NetworkAddressPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::NetworkAddressPrivate*))
    end

    @gio_network_address_private : LibGio::NetworkAddressPrivate*?
    def initialize(@gio_network_address_private : LibGio::NetworkAddressPrivate*)
    end

    def to_unsafe
      @gio_network_address_private.not_nil!
    end

  end
end

