require "./object"

module Gst
  class DeviceProvider < Object
    @pointer : Void*
    def initialize(pointer : LibGst::DeviceProvider*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::DeviceProvider*)
    end

    def self.register(plugin, name, rank, type)
      __return_value = LibGst.device_provider_register(plugin ? plugin.to_unsafe.as(LibGst::Plugin*) : nil, name.to_unsafe, UInt32.new(rank), UInt64.new(type))
      __return_value
    end

    def can_monitor
      __return_value = LibGst.device_provider_can_monitor(@pointer.as(LibGst::DeviceProvider*))
      __return_value
    end

    def device_add(device)
      LibGst.device_provider_device_add(@pointer.as(LibGst::DeviceProvider*), device.to_unsafe.as(LibGst::Device*))
      nil
    end

    def device_remove(device)
      LibGst.device_provider_device_remove(@pointer.as(LibGst::DeviceProvider*), device.to_unsafe.as(LibGst::Device*))
      nil
    end

    def bus
      __return_value = LibGst.device_provider_get_bus(@pointer.as(LibGst::DeviceProvider*))
      Gst::Bus.new(__return_value)
    end

    def devices
      __return_value = LibGst.device_provider_get_devices(@pointer.as(LibGst::DeviceProvider*))
      GLib::ListIterator(Gst::Device, LibGst::Device**).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def factory
      __return_value = LibGst.device_provider_get_factory(@pointer.as(LibGst::DeviceProvider*))
      Gst::DeviceProviderFactory.new(__return_value)
    end

    def hidden_providers
      __return_value = LibGst.device_provider_get_hidden_providers(@pointer.as(LibGst::DeviceProvider*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def hide_provider(name)
      LibGst.device_provider_hide_provider(@pointer.as(LibGst::DeviceProvider*), name.to_unsafe)
      nil
    end

    def start
      __return_value = LibGst.device_provider_start(@pointer.as(LibGst::DeviceProvider*))
      __return_value
    end

    def stop
      LibGst.device_provider_stop(@pointer.as(LibGst::DeviceProvider*))
      nil
    end

    def unhide_provider(name)
      LibGst.device_provider_unhide_provider(@pointer.as(LibGst::DeviceProvider*), name.to_unsafe)
      nil
    end

    alias ProviderHiddenSignal = DeviceProvider, String ->
    def on_provider_hidden(&__block : ProviderHiddenSignal)
      __callback = ->(_arg0 : LibGst::DeviceProvider*, _arg1 : LibGst::UInt8**) {
       __return_value = __block.call(DeviceProvider.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)))
       __return_value
      }
      connect("provider-hidden", __callback)
    end

    alias ProviderUnhiddenSignal = DeviceProvider, String ->
    def on_provider_unhidden(&__block : ProviderUnhiddenSignal)
      __callback = ->(_arg0 : LibGst::DeviceProvider*, _arg1 : LibGst::UInt8**) {
       __return_value = __block.call(DeviceProvider.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)))
       __return_value
      }
      connect("provider-unhidden", __callback)
    end

  end
end

