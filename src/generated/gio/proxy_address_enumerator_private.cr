module Gio
  class ProxyAddressEnumeratorPrivate
    include GObject::WrappedType

    @gio_proxy_address_enumerator_private : LibGio::ProxyAddressEnumeratorPrivate*?
    def initialize(@gio_proxy_address_enumerator_private : LibGio::ProxyAddressEnumeratorPrivate*)
    end

    def to_unsafe
      @gio_proxy_address_enumerator_private.not_nil!.as(Void*)
    end

  end
end

