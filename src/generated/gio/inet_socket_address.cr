require "./socket_address"

module Gio
  class InetSocketAddress < SocketAddress
    @gio_inet_socket_address : LibGio::InetSocketAddress*?
    def initialize(@gio_inet_socket_address : LibGio::InetSocketAddress*)
    end

    def to_unsafe
      @gio_inet_socket_address.not_nil!
    end

    # Implements SocketConnectable




    def self.new(address, port) : self
      __return_value = LibGio.inet_socket_address_new((address.to_unsafe as LibGio::InetAddress*), UInt16.new(port))
      cast Gio::SocketAddress.new(__return_value)
    end

    def self.new_from_string(address, port) : self
      __return_value = LibGio.inet_socket_address_new_from_string(address, UInt32.new(port))
      cast Gio::SocketAddress.new(__return_value)
    end

    def address
      __return_value = LibGio.inet_socket_address_get_address((to_unsafe as LibGio::InetSocketAddress*))
      Gio::InetAddress.new(__return_value)
    end

    def flowinfo
      __return_value = LibGio.inet_socket_address_get_flowinfo((to_unsafe as LibGio::InetSocketAddress*))
      __return_value
    end

    def port
      __return_value = LibGio.inet_socket_address_get_port((to_unsafe as LibGio::InetSocketAddress*))
      __return_value
    end

    def scope_id
      __return_value = LibGio.inet_socket_address_get_scope_id((to_unsafe as LibGio::InetSocketAddress*))
      __return_value
    end

  end
end

