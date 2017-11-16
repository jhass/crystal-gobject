module Gst
  class DevicePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::DevicePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::DevicePrivate*)
    end

  end
end

