module Gio
  module DBusInterface
    def object
      __return_value = LibGio.d_bus_interface_get_object(to_unsafe.as(LibGio::DBusInterface*))
      __return_value
    end

    def info
      __return_value = LibGio.d_bus_interface_get_info(to_unsafe.as(LibGio::DBusInterface*))
      Gio::DBusInterfaceInfo.new(__return_value)
    end

    def object=(object)
      __return_value = LibGio.d_bus_interface_set_object(to_unsafe.as(LibGio::DBusInterface*), object && object.to_unsafe.as(LibGio::DBusObject*))
      __return_value
    end

  end
end

