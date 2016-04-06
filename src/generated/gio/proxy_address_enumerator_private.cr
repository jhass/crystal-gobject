module Gio
  class ProxyAddressEnumeratorPrivate
    include GObject::WrappedType

    def initialize(@gio_proxy_address_enumerator_private)
    end

    def to_unsafe
      @gio_proxy_address_enumerator_private.not_nil!
    end

  end
end

