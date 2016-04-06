module Gst
  class DeviceMonitorPrivate
    include GObject::WrappedType

    def initialize(@gst_device_monitor_private)
    end

    def to_unsafe
      @gst_device_monitor_private.not_nil!
    end

  end
end

