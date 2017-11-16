module Gio
  class NetworkAddress < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::NetworkAddress*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::NetworkAddress*)
    end

    # Implements SocketConnectable
    def hostname
      __return_value = LibGio.network_address_get_hostname(to_unsafe.as(LibGio::NetworkAddress*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def port
      __return_value = LibGio.network_address_get_port(to_unsafe.as(LibGio::NetworkAddress*))
      __return_value
    end

    def scheme
      __return_value = LibGio.network_address_get_scheme(to_unsafe.as(LibGio::NetworkAddress*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.new(hostname, port) : self
      __return_value = LibGio.network_address_new(hostname.to_unsafe, UInt16.new(port))
      cast Gio::NetworkAddress.new(__return_value)
    end

    def self.new_loopback(port) : self
      __return_value = LibGio.network_address_new_loopback(UInt16.new(port))
      cast Gio::NetworkAddress.new(__return_value)
    end

    def self.parse(host_and_port, default_port)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.network_address_parse(host_and_port.to_unsafe, UInt16.new(default_port), pointerof(__error))
      GLib::Error.assert __error
      Gio::NetworkAddress.new(__return_value)
    end

    def self.parse_uri(uri, default_port)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.network_address_parse_uri(uri.to_unsafe, UInt16.new(default_port), pointerof(__error))
      GLib::Error.assert __error
      Gio::NetworkAddress.new(__return_value)
    end

    def hostname
      __return_value = LibGio.network_address_get_hostname(@pointer.as(LibGio::NetworkAddress*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def port
      __return_value = LibGio.network_address_get_port(@pointer.as(LibGio::NetworkAddress*))
      __return_value
    end

    def scheme
      __return_value = LibGio.network_address_get_scheme(@pointer.as(LibGio::NetworkAddress*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

  end
end

