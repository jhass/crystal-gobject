module Gio
  class DBusInterfaceInfo
    include GObject::WrappedType

    def initialize(@gio_d_bus_interface_info)
    end

    def to_unsafe
      @gio_d_bus_interface_info.not_nil!
    end

    def cache_build
      __return_value = LibGio.d_bus_interface_info_cache_build((to_unsafe as LibGio::DBusInterfaceInfo*))
      __return_value
    end

    def cache_release
      __return_value = LibGio.d_bus_interface_info_cache_release((to_unsafe as LibGio::DBusInterfaceInfo*))
      __return_value
    end

    def generate_xml(indent, string_builder)
      __return_value = LibGio.d_bus_interface_info_generate_xml((to_unsafe as LibGio::DBusInterfaceInfo*), UInt32.new(indent), string_builder)
      __return_value
    end

    def lookup_method(name)
      __return_value = LibGio.d_bus_interface_info_lookup_method((to_unsafe as LibGio::DBusInterfaceInfo*), name)
      Gio::DBusMethodInfo.new(__return_value)
    end

    def lookup_property(name)
      __return_value = LibGio.d_bus_interface_info_lookup_property((to_unsafe as LibGio::DBusInterfaceInfo*), name)
      Gio::DBusPropertyInfo.new(__return_value)
    end

    def lookup_signal(name)
      __return_value = LibGio.d_bus_interface_info_lookup_signal((to_unsafe as LibGio::DBusInterfaceInfo*), name)
      Gio::DBusSignalInfo.new(__return_value)
    end

    def ref
      __return_value = LibGio.d_bus_interface_info_ref((to_unsafe as LibGio::DBusInterfaceInfo*))
      Gio::DBusInterfaceInfo.new(__return_value)
    end

    def unref
      __return_value = LibGio.d_bus_interface_info_unref((to_unsafe as LibGio::DBusInterfaceInfo*))
      __return_value
    end

  end
end

