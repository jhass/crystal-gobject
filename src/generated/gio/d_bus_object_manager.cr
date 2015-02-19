module Gio
  module DBusObjectManager
    def interface(object_path, interface_name)
      __return_value = LibGio.d_bus_object_manager_get_interface((to_unsafe as LibGio::DBusObjectManager*), object_path, interface_name)
      __return_value
    end

    def object(object_path)
      __return_value = LibGio.d_bus_object_manager_get_object((to_unsafe as LibGio::DBusObjectManager*), object_path)
      __return_value
    end

    def object_path
      __return_value = LibGio.d_bus_object_manager_get_object_path((to_unsafe as LibGio::DBusObjectManager*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def objects
      __return_value = LibGio.d_bus_object_manager_get_objects((to_unsafe as LibGio::DBusObjectManager*))
      __return_value
    end

  end
end

