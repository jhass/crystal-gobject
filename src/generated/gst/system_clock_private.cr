module Gst
  class SystemClockPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGst::SystemClockPrivate*))
    end

    @gst_system_clock_private : LibGst::SystemClockPrivate*?
    def initialize(@gst_system_clock_private : LibGst::SystemClockPrivate*)
    end

    def to_unsafe
      @gst_system_clock_private.not_nil!
    end

  end
end

