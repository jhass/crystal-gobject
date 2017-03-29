module Gio
  class NetworkAddressPrivate
    include GObject::WrappedType

    @gio_network_address_private : LibGio::NetworkAddressPrivate*?
    def initialize(@gio_network_address_private : LibGio::NetworkAddressPrivate*)
    end

    def to_unsafe
      @gio_network_address_private.not_nil!
    end

  end
end

