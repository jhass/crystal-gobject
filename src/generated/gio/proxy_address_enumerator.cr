require "./socket_address_enumerator"

module Gio
  class ProxyAddressEnumerator < SocketAddressEnumerator
    @pointer : Void*
    def initialize(pointer : LibGio::ProxyAddressEnumerator*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::ProxyAddressEnumerator*)
    end

    def connectable
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "connectable", gvalue)
      gvalue
    end

    def default_port
      gvalue = GObject::Value.new(GObject::Type::UINT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "default_port", gvalue)
      gvalue
    end

    def proxy_resolver
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "proxy_resolver", gvalue)
      gvalue
    end

    def uri
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "uri", gvalue)
      gvalue.string
    end

  end
end

