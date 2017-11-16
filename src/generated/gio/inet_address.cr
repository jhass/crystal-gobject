module Gio
  class InetAddress < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::InetAddress*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::InetAddress*)
    end

    def bytes
      gvalue = GObject::Value.new(GObject::Type::ZERO_NONE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "bytes", gvalue)
      gvalue
    end

    def family
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "family", gvalue)
      gvalue.enum
    end

    def is_any
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "is_any", gvalue)
      gvalue.boolean
    end

    def is_link_local
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "is_link_local", gvalue)
      gvalue.boolean
    end

    def is_loopback
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "is_loopback", gvalue)
      gvalue.boolean
    end

    def is_mc_global
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "is_mc_global", gvalue)
      gvalue.boolean
    end

    def is_mc_link_local
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "is_mc_link_local", gvalue)
      gvalue.boolean
    end

    def is_mc_node_local
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "is_mc_node_local", gvalue)
      gvalue.boolean
    end

    def is_mc_org_local
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "is_mc_org_local", gvalue)
      gvalue.boolean
    end

    def is_mc_site_local
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "is_mc_site_local", gvalue)
      gvalue.boolean
    end

    def is_multicast
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "is_multicast", gvalue)
      gvalue.boolean
    end

    def is_site_local
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "is_site_local", gvalue)
      gvalue.boolean
    end

    def self.new_any(family : Gio::SocketFamily) : self
      __return_value = LibGio.inet_address_new_any(family)
      cast Gio::InetAddress.new(__return_value)
    end

    def self.new_from_bytes(bytes, family : Gio::SocketFamily) : self
      __return_value = LibGio.inet_address_new_from_bytes(bytes, family)
      cast Gio::InetAddress.new(__return_value)
    end

    def self.new_from_string(string) : self
      __return_value = LibGio.inet_address_new_from_string(string.to_unsafe)
      cast Gio::InetAddress.new(__return_value)
    end

    def self.new_loopback(family : Gio::SocketFamily) : self
      __return_value = LibGio.inet_address_new_loopback(family)
      cast Gio::InetAddress.new(__return_value)
    end

    def equal(other_address)
      __return_value = LibGio.inet_address_equal(@pointer.as(LibGio::InetAddress*), other_address.to_unsafe.as(LibGio::InetAddress*))
      __return_value
    end

    def family
      __return_value = LibGio.inet_address_get_family(@pointer.as(LibGio::InetAddress*))
      __return_value
    end

    def is_any
      __return_value = LibGio.inet_address_get_is_any(@pointer.as(LibGio::InetAddress*))
      __return_value
    end

    def is_link_local
      __return_value = LibGio.inet_address_get_is_link_local(@pointer.as(LibGio::InetAddress*))
      __return_value
    end

    def is_loopback
      __return_value = LibGio.inet_address_get_is_loopback(@pointer.as(LibGio::InetAddress*))
      __return_value
    end

    def is_mc_global
      __return_value = LibGio.inet_address_get_is_mc_global(@pointer.as(LibGio::InetAddress*))
      __return_value
    end

    def is_mc_link_local
      __return_value = LibGio.inet_address_get_is_mc_link_local(@pointer.as(LibGio::InetAddress*))
      __return_value
    end

    def is_mc_node_local
      __return_value = LibGio.inet_address_get_is_mc_node_local(@pointer.as(LibGio::InetAddress*))
      __return_value
    end

    def is_mc_org_local
      __return_value = LibGio.inet_address_get_is_mc_org_local(@pointer.as(LibGio::InetAddress*))
      __return_value
    end

    def is_mc_site_local
      __return_value = LibGio.inet_address_get_is_mc_site_local(@pointer.as(LibGio::InetAddress*))
      __return_value
    end

    def is_multicast
      __return_value = LibGio.inet_address_get_is_multicast(@pointer.as(LibGio::InetAddress*))
      __return_value
    end

    def is_site_local
      __return_value = LibGio.inet_address_get_is_site_local(@pointer.as(LibGio::InetAddress*))
      __return_value
    end

    def native_size
      __return_value = LibGio.inet_address_get_native_size(@pointer.as(LibGio::InetAddress*))
      __return_value
    end

    def to_string
      __return_value = LibGio.inet_address_to_string(@pointer.as(LibGio::InetAddress*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

  end
end

