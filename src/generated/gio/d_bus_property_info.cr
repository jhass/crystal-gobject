module Gio
  class DBusPropertyInfo
    include GObject::WrappedType

    def initialize(@gio_d_bus_property_info)
    end

    def to_unsafe
      @gio_d_bus_property_info.not_nil!
    end

    def ref
      __return_value = LibGio.d_bus_property_info_ref((to_unsafe as LibGio::DBusPropertyInfo*))
      Gio::DBusPropertyInfo.new(__return_value)
    end

    def unref
      __return_value = LibGio.d_bus_property_info_unref((to_unsafe as LibGio::DBusPropertyInfo*))
      __return_value
    end

  end
end

