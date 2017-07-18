require "./socket_address_enumerator"

module Gio
  class ProxyAddressEnumerator < SocketAddressEnumerator
    @gio_proxy_address_enumerator : LibGio::ProxyAddressEnumerator*?
    def initialize(@gio_proxy_address_enumerator : LibGio::ProxyAddressEnumerator*)
    end

    def to_unsafe
      @gio_proxy_address_enumerator.not_nil!
    end

    def connectable
      __return_value = LibGio.proxy_address_enumerator_get_connectable(to_unsafe.as(LibGio::ProxyAddressEnumerator*))
      __return_value
    end

    def default_port
      __return_value = LibGio.proxy_address_enumerator_get_default_port(to_unsafe.as(LibGio::ProxyAddressEnumerator*))
      __return_value
    end

    def proxy_resolver
      __return_value = LibGio.proxy_address_enumerator_get_proxy_resolver(to_unsafe.as(LibGio::ProxyAddressEnumerator*))
      __return_value
    end

    def uri
      __return_value = LibGio.proxy_address_enumerator_get_uri(to_unsafe.as(LibGio::ProxyAddressEnumerator*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

  end
end

