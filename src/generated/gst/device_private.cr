module Gst
  class DevicePrivate
    include GObject::WrappedType

    def initialize(@gst_device_private)
    end

    def to_unsafe
      @gst_device_private.not_nil!
    end

  end
end

