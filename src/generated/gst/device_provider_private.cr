module Gst
  class DeviceProviderPrivate
    include GObject::WrappedType

    @gst_device_provider_private : LibGst::DeviceProviderPrivate*?
    def initialize(@gst_device_provider_private : LibGst::DeviceProviderPrivate*)
    end

    def to_unsafe
      @gst_device_provider_private.not_nil!.as(Void*)
    end

  end
end

