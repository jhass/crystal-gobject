module Gdk
  class DeviceManager < GObject::Object
    def initialize @gdk_device_manager
    end

    def to_unsafe
      @gdk_device_manager.not_nil!
    end


    def client_pointer
      __return_value = LibGdk.device_manager_get_client_pointer((to_unsafe as LibGdk::DeviceManager*))
      Gdk::Device.new(__return_value)
    end

    def display
      __return_value = LibGdk.device_manager_get_display((to_unsafe as LibGdk::DeviceManager*))
      Gdk::Display.new(__return_value) if __return_value
    end

    def list_devices(type)
      __return_value = LibGdk.device_manager_list_devices((to_unsafe as LibGdk::DeviceManager*), type)
      __return_value
    end

  end
end

