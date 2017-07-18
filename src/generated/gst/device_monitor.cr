require "./object"

module Gst
  class DeviceMonitor < Object
    @gst_device_monitor : LibGst::DeviceMonitor*?
    def initialize(@gst_device_monitor : LibGst::DeviceMonitor*)
    end

    def to_unsafe
      @gst_device_monitor.not_nil!
    end

    def show_all
      __return_value = LibGst.device_monitor_get_show_all(to_unsafe.as(LibGst::DeviceMonitor*))
      __return_value
    end

    def self.new : self
      __return_value = LibGst.device_monitor_new
      cast Gst::DeviceMonitor.new(__return_value)
    end

    def add_filter(classes, caps)
      __return_value = LibGst.device_monitor_add_filter(to_unsafe.as(LibGst::DeviceMonitor*), classes ? classes.to_unsafe : nil, caps ? caps.to_unsafe.as(LibGst::Caps*) : nil)
      __return_value
    end

    def bus
      __return_value = LibGst.device_monitor_get_bus(to_unsafe.as(LibGst::DeviceMonitor*))
      Gst::Bus.new(__return_value)
    end

    def devices
      __return_value = LibGst.device_monitor_get_devices(to_unsafe.as(LibGst::DeviceMonitor*))
      GLib::ListIterator(Gst::Device, LibGst::Device*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def providers
      __return_value = LibGst.device_monitor_get_providers(to_unsafe.as(LibGst::DeviceMonitor*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def show_all_devices
      __return_value = LibGst.device_monitor_get_show_all_devices(to_unsafe.as(LibGst::DeviceMonitor*))
      __return_value
    end

    def remove_filter(filter_id)
      __return_value = LibGst.device_monitor_remove_filter(to_unsafe.as(LibGst::DeviceMonitor*), UInt32.new(filter_id))
      __return_value
    end

    def show_all_devices=(show_all)
      __return_value = LibGst.device_monitor_set_show_all_devices(to_unsafe.as(LibGst::DeviceMonitor*), show_all)
      __return_value
    end

    def start
      __return_value = LibGst.device_monitor_start(to_unsafe.as(LibGst::DeviceMonitor*))
      __return_value
    end

    def stop
      __return_value = LibGst.device_monitor_stop(to_unsafe.as(LibGst::DeviceMonitor*))
      __return_value
    end

  end
end

