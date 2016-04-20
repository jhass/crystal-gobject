require "./object"

module Gst
  class DeviceProvider < Object
    def initialize(@gst_device_provider)
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

    def hidden_providers
      __return_value = LibGst.device_provider_get_hidden_providers((to_unsafe as LibGst::DeviceProvider*))
      PointerIterator.new(__return_value) {|__item_86| (raise "Expected string but got null" unless __item_86; ::String.new(__item_86)) }
    end

    def hide_provider(name)
      __return_value = LibGst.device_provider_hide_provider((to_unsafe as LibGst::DeviceProvider*), name)
      __return_value
    end

    def start
      __return_value = LibGst.device_provider_start((to_unsafe as LibGst::DeviceProvider*))
      __return_value
    end

    def stop
      __return_value = LibGst.device_provider_stop((to_unsafe as LibGst::DeviceProvider*))
      __return_value
    end

    def unhide_provider(name)
      __return_value = LibGst.device_provider_unhide_provider((to_unsafe as LibGst::DeviceProvider*), name)
      __return_value
    end

    alias ProviderHiddenSignal = DeviceProvider, UInt8 -> 
    def on_provider_hidden(&__block : ProviderHiddenSignal)
      __callback = ->(_arg0 : LibGst::DeviceProvider*, _arg1 : LibGst::UInt8**) {
       __return_value = __block.call(DeviceProvider.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)))
       __return_value
      }
      connect("provider-hidden", __callback)
    end

    alias ProviderUnhiddenSignal = DeviceProvider, UInt8 -> 
    def on_provider_unhidden(&__block : ProviderUnhiddenSignal)
      __callback = ->(_arg0 : LibGst::DeviceProvider*, _arg1 : LibGst::UInt8**) {
       __return_value = __block.call(DeviceProvider.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)))
       __return_value
      }
      connect("provider-unhidden", __callback)
    end

  end
end

