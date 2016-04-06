module Gio
  class NetworkAddress < GObject::Object
    def initialize(@gio_network_address)
    end

    def to_unsafe
      @gio_network_address.not_nil!
    end

    # Implements SocketConnectable



    def self.new_internal(hostname, port)
      __return_value = LibGio.network_address_new(hostname, UInt16.new(port))
      Gio::NetworkAddress.new(__return_value)
    end

    def self.new_loopback(port)
      __return_value = LibGio.network_address_new_loopback(UInt16.new(port))
      Gio::NetworkAddress.new(__return_value)
    end

    def self.parse(host_and_port, default_port)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.network_address_parse(host_and_port, UInt16.new(default_port), pointerof(__error))
      GLib::Error.assert __error
      Gio::NetworkAddress.new(__return_value)
    end

    def self.parse_uri(uri, default_port)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.network_address_parse_uri(uri, UInt16.new(default_port), pointerof(__error))
      GLib::Error.assert __error
      Gio::NetworkAddress.new(__return_value)
    end

    def hostname
      __return_value = LibGio.network_address_get_hostname((to_unsafe as LibGio::NetworkAddress*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def port
      __return_value = LibGio.network_address_get_port((to_unsafe as LibGio::NetworkAddress*))
      __return_value
    end

    def scheme
      __return_value = LibGio.network_address_get_scheme((to_unsafe as LibGio::NetworkAddress*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

  end
end

