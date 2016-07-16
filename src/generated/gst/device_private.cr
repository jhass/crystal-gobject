module Gst
  class DevicePrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGst::DevicePrivate*))
    end

    @gst_device_private : LibGst::DevicePrivate*?
    def initialize(@gst_device_private : LibGst::DevicePrivate*)
    end

    def to_unsafe
      @gst_device_private.not_nil!
    end

  end
end

