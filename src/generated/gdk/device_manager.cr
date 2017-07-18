module Gdk
  class DeviceManager < GObject::Object
    @gdk_device_manager : LibGdk::DeviceManager*?
    def initialize(@gdk_device_manager : LibGdk::DeviceManager*)
    end

    def to_unsafe
      @gdk_device_manager.not_nil!
    end

    def display
      __return_value = LibGdk.device_manager_get_display(to_unsafe.as(LibGdk::DeviceManager*))
      Gdk::Display.new(__return_value)
    end

    def client_pointer
      __return_value = LibGdk.device_manager_get_client_pointer(to_unsafe.as(LibGdk::DeviceManager*))
      Gdk::Device.new(__return_value)
    end

    def display
      __return_value = LibGdk.device_manager_get_display(to_unsafe.as(LibGdk::DeviceManager*))
      Gdk::Display.new(__return_value) if __return_value
    end

    def list_devices(type : Gdk::DeviceType)
      __return_value = LibGdk.device_manager_list_devices(to_unsafe.as(LibGdk::DeviceManager*), type)
      GLib::ListIterator(Gdk::Device, LibGdk::Device*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    alias DeviceAddedSignal = DeviceManager, Gdk::Device ->
    def on_device_added(&__block : DeviceAddedSignal)
      __callback = ->(_arg0 : LibGdk::DeviceManager*, _arg1 : LibGdk::LibGdk::Device*) {
       __return_value = __block.call(DeviceManager.new(_arg0), Gdk::Device.new(_arg1))
       __return_value
      }
      connect("device-added", __callback)
    end

    alias DeviceChangedSignal = DeviceManager, Gdk::Device ->
    def on_device_changed(&__block : DeviceChangedSignal)
      __callback = ->(_arg0 : LibGdk::DeviceManager*, _arg1 : LibGdk::LibGdk::Device*) {
       __return_value = __block.call(DeviceManager.new(_arg0), Gdk::Device.new(_arg1))
       __return_value
      }
      connect("device-changed", __callback)
    end

    alias DeviceRemovedSignal = DeviceManager, Gdk::Device ->
    def on_device_removed(&__block : DeviceRemovedSignal)
      __callback = ->(_arg0 : LibGdk::DeviceManager*, _arg1 : LibGdk::LibGdk::Device*) {
       __return_value = __block.call(DeviceManager.new(_arg0), Gdk::Device.new(_arg1))
       __return_value
      }
      connect("device-removed", __callback)
    end

  end
end

