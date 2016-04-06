module Gio
  class NetworkAddressPrivate
    include GObject::WrappedType

    def initialize(@gio_network_address_private)
    end

    def to_unsafe
      @gio_network_address_private.not_nil!
    end

  end
end

