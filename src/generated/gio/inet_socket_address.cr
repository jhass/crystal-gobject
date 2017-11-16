require "./socket_address"

module Gio
  class InetSocketAddress < SocketAddress
    @pointer : Void*
    def initialize(pointer : LibGio::InetSocketAddress*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::InetSocketAddress*)
    end

    # Implements SocketConnectable
    def address
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "address", gvalue)
      Gio::InetAddress.cast(gvalue.object)
    end

    def flowinfo
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "flowinfo", gvalue)
      gvalue
    end

    def port
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "port", gvalue)
      gvalue
    end

    def scope_id
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "scope_id", gvalue)
      gvalue
    end

    def self.new(address, port) : self
      __return_value = LibGio.inet_socket_address_new(address.to_unsafe.as(LibGio::InetAddress*), UInt16.new(port))
      cast Gio::SocketAddress.new(__return_value)
    end

    def self.new_from_string(address, port) : self
      __return_value = LibGio.inet_socket_address_new_from_string(address.to_unsafe, UInt32.new(port))
      cast Gio::SocketAddress.new(__return_value)
    end

    def address
      __return_value = LibGio.inet_socket_address_get_address(@pointer.as(LibGio::InetSocketAddress*))
      Gio::InetAddress.new(__return_value)
    end

    def flowinfo
      __return_value = LibGio.inet_socket_address_get_flowinfo(@pointer.as(LibGio::InetSocketAddress*))
      __return_value
    end

    def port
      __return_value = LibGio.inet_socket_address_get_port(@pointer.as(LibGio::InetSocketAddress*))
      __return_value
    end

    def scope_id
      __return_value = LibGio.inet_socket_address_get_scope_id(@pointer.as(LibGio::InetSocketAddress*))
      __return_value
    end

  end
end

