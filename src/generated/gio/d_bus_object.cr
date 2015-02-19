module Gio
  module DBusObject
    def interface(interface_name)
      __return_value = LibGio.d_bus_object_get_interface((to_unsafe as LibGio::DBusObject*), interface_name)
      __return_value
    end

    def interfaces
      __return_value = LibGio.d_bus_object_get_interfaces((to_unsafe as LibGio::DBusObject*))
      __return_value
    end

    def object_path
      __return_value = LibGio.d_bus_object_get_object_path((to_unsafe as LibGio::DBusObject*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

  end
end

