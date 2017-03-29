require "./socket_address_enumerator"

module Gio
  class ProxyAddressEnumerator < SocketAddressEnumerator
    @gio_proxy_address_enumerator : LibGio::ProxyAddressEnumerator*?
    def initialize(@gio_proxy_address_enumerator : LibGio::ProxyAddressEnumerator*)
    end

    def to_unsafe
      @gio_proxy_address_enumerator.not_nil!
    end





  end
end

