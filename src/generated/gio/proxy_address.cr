require "./inet_socket_address"

module Gio
  class ProxyAddress < InetSocketAddress
    @pointer : Void*
    def initialize(pointer : LibGio::ProxyAddress*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::ProxyAddress*)
    end

    # Implements SocketConnectable
    def destination_hostname
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "destination_hostname", gvalue)
      gvalue.string
    end

    def destination_port
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "destination_port", gvalue)
      gvalue
    end

    def destination_protocol
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "destination_protocol", gvalue)
      gvalue.string
    end

    def password
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "password", gvalue)
      gvalue.string
    end

    def protocol
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "protocol", gvalue)
      gvalue.string
    end

    def uri
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "uri", gvalue)
      gvalue.string
    end

    def username
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "username", gvalue)
      gvalue.string
    end

    def self.new(inetaddr, port, protocol, dest_hostname, dest_port, username, password) : self
      __return_value = LibGio.proxy_address_new(inetaddr.to_unsafe.as(LibGio::InetAddress*), UInt16.new(port), protocol.to_unsafe, dest_hostname.to_unsafe, UInt16.new(dest_port), username ? username.to_unsafe : nil, password ? password.to_unsafe : nil)
      cast Gio::SocketAddress.new(__return_value)
    end

    def destination_hostname
      __return_value = LibGio.proxy_address_get_destination_hostname(@pointer.as(LibGio::ProxyAddress*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def destination_port
      __return_value = LibGio.proxy_address_get_destination_port(@pointer.as(LibGio::ProxyAddress*))
      __return_value
    end

    def destination_protocol
      __return_value = LibGio.proxy_address_get_destination_protocol(@pointer.as(LibGio::ProxyAddress*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def password
      __return_value = LibGio.proxy_address_get_password(@pointer.as(LibGio::ProxyAddress*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def protocol
      __return_value = LibGio.proxy_address_get_protocol(@pointer.as(LibGio::ProxyAddress*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def uri
      __return_value = LibGio.proxy_address_get_uri(@pointer.as(LibGio::ProxyAddress*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def username
      __return_value = LibGio.proxy_address_get_username(@pointer.as(LibGio::ProxyAddress*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

  end
end

