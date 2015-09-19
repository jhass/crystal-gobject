require "./object"

module Gst
  class DeviceMonitor < Object
    def initialize @gst_device_monitor
    end

    def to_unsafe
      @gst_device_monitor.not_nil!
    end

    def self.new_internal
      __return_value = LibGst.device_monitor_new
      Gst::DeviceMonitor.new(__return_value)
    end

    def add_filter(classes, caps)
      __return_value = LibGst.device_monitor_add_filter((to_unsafe as LibGst::DeviceMonitor*), classes && classes, caps && (caps.to_unsafe as LibGst::Caps*))
      __return_value
    end

    def bus
      __return_value = LibGst.device_monitor_get_bus((to_unsafe as LibGst::DeviceMonitor*))
      Gst::Bus.new(__return_value)
    end

    def devices
      __return_value = LibGst.device_monitor_get_devices((to_unsafe as LibGst::DeviceMonitor*))
      __return_value
    end

    def remove_filter(filter_id)
      __return_value = LibGst.device_monitor_remove_filter((to_unsafe as LibGst::DeviceMonitor*), UInt32.new(filter_id))
      __return_value
    end

    def start
      __return_value = LibGst.device_monitor_start((to_unsafe as LibGst::DeviceMonitor*))
      __return_value
    end

    def stop
      __return_value = LibGst.device_monitor_stop((to_unsafe as LibGst::DeviceMonitor*))
      __return_value
    end

  end
end

