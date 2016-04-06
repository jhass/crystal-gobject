module Gio
  class DBusSignalInfo
    include GObject::WrappedType

    def initialize(@gio_d_bus_signal_info)
    end

    def to_unsafe
      @gio_d_bus_signal_info.not_nil!
    end

    def ref
      __return_value = LibGio.d_bus_signal_info_ref((to_unsafe as LibGio::DBusSignalInfo*))
      Gio::DBusSignalInfo.new(__return_value)
    end

    def unref
      __return_value = LibGio.d_bus_signal_info_unref((to_unsafe as LibGio::DBusSignalInfo*))
      __return_value
    end

  end
end

