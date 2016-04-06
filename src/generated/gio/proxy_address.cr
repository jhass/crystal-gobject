require "./inet_socket_address"

module Gio
  class ProxyAddress < InetSocketAddress
    def initialize(@gio_proxy_address)
    end

    def to_unsafe
      @gio_proxy_address.not_nil!
    end

    # Implements SocketConnectable







    def self.new_internal(inetaddr, port, protocol, dest_hostname, dest_port, username, password)
      __return_value = LibGio.proxy_address_new((inetaddr.to_unsafe as LibGio::InetAddress*), UInt16.new(port), protocol, dest_hostname, UInt16.new(dest_port), username && username, password && password)
      Gio::SocketAddress.new(__return_value)
    end

    def destination_hostname
      __return_value = LibGio.proxy_address_get_destination_hostname((to_unsafe as LibGio::ProxyAddress*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def destination_port
      __return_value = LibGio.proxy_address_get_destination_port((to_unsafe as LibGio::ProxyAddress*))
      __return_value
    end

    def destination_protocol
      __return_value = LibGio.proxy_address_get_destination_protocol((to_unsafe as LibGio::ProxyAddress*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def password
      __return_value = LibGio.proxy_address_get_password((to_unsafe as LibGio::ProxyAddress*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def protocol
      __return_value = LibGio.proxy_address_get_protocol((to_unsafe as LibGio::ProxyAddress*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def uri
      __return_value = LibGio.proxy_address_get_uri((to_unsafe as LibGio::ProxyAddress*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def username
      __return_value = LibGio.proxy_address_get_username((to_unsafe as LibGio::ProxyAddress*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

  end
end

