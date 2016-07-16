module Gst
  class ClockPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGst::ClockPrivate*))
    end

    @gst_clock_private : LibGst::ClockPrivate*?
    def initialize(@gst_clock_private : LibGst::ClockPrivate*)
    end

    def to_unsafe
      @gst_clock_private.not_nil!.as(Void*)
    end

  end
end

