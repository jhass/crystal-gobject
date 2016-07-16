module Gst
  class DevicePrivate
    include GObject::WrappedType

    @gst_device_private : LibGst::DevicePrivate*?
    def initialize(@gst_device_private : LibGst::DevicePrivate*)
    end

    def to_unsafe
      @gst_device_private.not_nil!.as(Void*)
    end

  end
end

