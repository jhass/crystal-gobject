module Gst
  class DeviceProviderPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGst::DeviceProviderPrivate*))
    end

    @gst_device_provider_private : LibGst::DeviceProviderPrivate*?
    def initialize(@gst_device_provider_private : LibGst::DeviceProviderPrivate*)
    end

    def to_unsafe
      @gst_device_provider_private.not_nil!
    end

  end
end

