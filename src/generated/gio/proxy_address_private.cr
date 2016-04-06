module Gio
  class ProxyAddressPrivate
    include GObject::WrappedType

    def initialize(@gio_proxy_address_private)
    end

    def to_unsafe
      @gio_proxy_address_private.not_nil!
    end

  end
end

