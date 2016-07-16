module Gio
  class ProxyAddressEnumeratorPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::ProxyAddressEnumeratorPrivate*))
    end

    @gio_proxy_address_enumerator_private : LibGio::ProxyAddressEnumeratorPrivate*?
    def initialize(@gio_proxy_address_enumerator_private : LibGio::ProxyAddressEnumeratorPrivate*)
    end

    def to_unsafe
      @gio_proxy_address_enumerator_private.not_nil!
    end

  end
end

