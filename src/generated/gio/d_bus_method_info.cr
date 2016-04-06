module Gio
  class DBusMethodInfo
    include GObject::WrappedType

    def initialize(@gio_d_bus_method_info)
    end

    def to_unsafe
      @gio_d_bus_method_info.not_nil!
    end

    def ref
      __return_value = LibGio.d_bus_method_info_ref((to_unsafe as LibGio::DBusMethodInfo*))
      Gio::DBusMethodInfo.new(__return_value)
    end

    def unref
      __return_value = LibGio.d_bus_method_info_unref((to_unsafe as LibGio::DBusMethodInfo*))
      __return_value
    end

  end
end

