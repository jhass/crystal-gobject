module Gst
  class SystemClockPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::SystemClockPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::SystemClockPrivate*)
    end

  end
end

