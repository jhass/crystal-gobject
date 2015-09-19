require "./object"

module Gst
  class DeviceProvider < Object
    def initialize @gst_device_provider
    end

    def to_unsafe
      @gst_device_provider.not_nil!
    end

    def self.register(plugin, name, rank, type)
      __return_value = LibGst.device_provider_register(plugin && (plugin.to_unsafe as LibGst::Plugin*), name, UInt32.new(rank), UInt64.new(type))
      __return_value
    end

    def can_monitor
      __return_value = LibGst.device_provider_can_monitor((to_unsafe as LibGst::DeviceProvider*))
      __return_value
    end

    def device_add(device)
      __return_value = LibGst.device_provider_device_add((to_unsafe as LibGst::DeviceProvider*), (device.to_unsafe as LibGst::Device*))
      __return_value
    end

    def device_remove(device)
      __return_value = LibGst.device_provider_device_remove((to_unsafe as LibGst::DeviceProvider*), (device.to_unsafe as LibGst::Device*))
      __return_value
    end

    def bus
      __return_value = LibGst.device_provider_get_bus((to_unsafe as LibGst::DeviceProvider*))
      Gst::Bus.new(__return_value)
    end

    def devices
      __return_value = LibGst.device_provider_get_devices((to_unsafe as LibGst::DeviceProvider*))
      __return_value
    end

    def factory
      __return_value = LibGst.device_provider_get_factory((to_unsafe as LibGst::DeviceProvider*))
      Gst::DeviceProviderFactory.new(__return_value)
    end

    def start
      __return_value = LibGst.device_provider_start((to_unsafe as LibGst::DeviceProvider*))
      __return_value
    end

    def stop
      __return_value = LibGst.device_provider_stop((to_unsafe as LibGst::DeviceProvider*))
      __return_value
    end

  end
end

