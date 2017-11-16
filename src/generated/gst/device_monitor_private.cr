module Gst
  class DeviceMonitorPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::DeviceMonitorPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::DeviceMonitorPrivate*)
    end

  end
end

