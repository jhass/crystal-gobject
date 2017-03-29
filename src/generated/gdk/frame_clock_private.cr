module Gdk
  class FrameClockPrivate
    include GObject::WrappedType

    @gdk_frame_clock_private : LibGdk::FrameClockPrivate*?
    def initialize(@gdk_frame_clock_private : LibGdk::FrameClockPrivate*)
    end

    def to_unsafe
      @gdk_frame_clock_private.not_nil!
    end

  end
end

