module Gio
  module DBusInterface
    def object
      __return_value = LibGio.d_bus_interface_get_object(@pointer.as(LibGio::DBusInterface*))
      __return_value
    end

    def info
      __return_value = LibGio.d_bus_interface_get_info(@pointer.as(LibGio::DBusInterface*))
      Gio::DBusInterfaceInfo.new(__return_value)
    end

    def object=(object)
      LibGio.d_bus_interface_set_object(@pointer.as(LibGio::DBusInterface*), object ? object.to_unsafe.as(LibGio::DBusObject*) : nil)
      nil
    end

  end
end

