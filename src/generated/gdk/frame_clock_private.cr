module Gdk
  class FrameClockPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGdk::FrameClockPrivate*))
    end

    @gdk_frame_clock_private : LibGdk::FrameClockPrivate*?
    def initialize(@gdk_frame_clock_private : LibGdk::FrameClockPrivate*)
    end

    def to_unsafe
      @gdk_frame_clock_private.not_nil!.as(Void*)
    end

  end
end

