module Gst
  class DeviceProviderPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::DeviceProviderPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::DeviceProviderPrivate*)
    end

  end
end

