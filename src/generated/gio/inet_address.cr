module Gio
  class InetAddress < GObject::Object
    def initialize(@gio_inet_address)
    end

    def to_unsafe
      @gio_inet_address.not_nil!
    end













    def self.new_any(family)
      __return_value = LibGio.inet_address_new_any(family)
      Gio::InetAddress.new(__return_value)
    end

    def self.new_from_bytes(bytes, family)
      __return_value = LibGio.inet_address_new_from_bytes(bytes, family)
      Gio::InetAddress.new(__return_value)
    end

    def self.new_from_string(string)
      __return_value = LibGio.inet_address_new_from_string(string)
      Gio::InetAddress.new(__return_value)
    end

    def self.new_loopback(family)
      __return_value = LibGio.inet_address_new_loopback(family)
      Gio::InetAddress.new(__return_value)
    end

    def equal(other_address)
      __return_value = LibGio.inet_address_equal((to_unsafe as LibGio::InetAddress*), (other_address.to_unsafe as LibGio::InetAddress*))
      __return_value
    end

    def family
      __return_value = LibGio.inet_address_get_family((to_unsafe as LibGio::InetAddress*))
      __return_value
    end

    def is_any
      __return_value = LibGio.inet_address_get_is_any((to_unsafe as LibGio::InetAddress*))
      __return_value
    end

    def is_link_local
      __return_value = LibGio.inet_address_get_is_link_local((to_unsafe as LibGio::InetAddress*))
      __return_value
    end

    def is_loopback
      __return_value = LibGio.inet_address_get_is_loopback((to_unsafe as LibGio::InetAddress*))
      __return_value
    end

    def is_mc_global
      __return_value = LibGio.inet_address_get_is_mc_global((to_unsafe as LibGio::InetAddress*))
      __return_value
    end

    def is_mc_link_local
      __return_value = LibGio.inet_address_get_is_mc_link_local((to_unsafe as LibGio::InetAddress*))
      __return_value
    end

    def is_mc_node_local
      __return_value = LibGio.inet_address_get_is_mc_node_local((to_unsafe as LibGio::InetAddress*))
      __return_value
    end

    def is_mc_org_local
      __return_value = LibGio.inet_address_get_is_mc_org_local((to_unsafe as LibGio::InetAddress*))
      __return_value
    end

    def is_mc_site_local
      __return_value = LibGio.inet_address_get_is_mc_site_local((to_unsafe as LibGio::InetAddress*))
      __return_value
    end

    def is_multicast
      __return_value = LibGio.inet_address_get_is_multicast((to_unsafe as LibGio::InetAddress*))
      __return_value
    end

    def is_site_local
      __return_value = LibGio.inet_address_get_is_site_local((to_unsafe as LibGio::InetAddress*))
      __return_value
    end

    def native_size
      __return_value = LibGio.inet_address_get_native_size((to_unsafe as LibGio::InetAddress*))
      __return_value
    end

    def to_string
      __return_value = LibGio.inet_address_to_string((to_unsafe as LibGio::InetAddress*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

  end
end

