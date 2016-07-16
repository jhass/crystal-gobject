module Gst
  class DeviceMonitorPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGst::DeviceMonitorPrivate*))
    end

    @gst_device_monitor_private : LibGst::DeviceMonitorPrivate*?
    def initialize(@gst_device_monitor_private : LibGst::DeviceMonitorPrivate*)
    end

    def to_unsafe
      @gst_device_monitor_private.not_nil!.as(Void*)
    end

  end
end

