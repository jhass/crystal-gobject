module Gst
  class DeviceProviderPrivate
    include GObject::WrappedType

    def initialize(@gst_device_provider_private)
    end

    def to_unsafe
      @gst_device_provider_private.not_nil!
    end

  end
end

