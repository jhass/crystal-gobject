module Gio
  class ProxyAddressPrivate
    include GObject::WrappedType

    @gio_proxy_address_private : LibGio::ProxyAddressPrivate*?
    def initialize(@gio_proxy_address_private : LibGio::ProxyAddressPrivate*)
    end

    def to_unsafe
      @gio_proxy_address_private.not_nil!.as(Void*)
    end

  end
end

