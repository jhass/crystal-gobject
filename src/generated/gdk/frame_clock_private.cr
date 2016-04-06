module Gdk
  class FrameClockPrivate
    include GObject::WrappedType

    def initialize(@gdk_frame_clock_private)
    end

    def to_unsafe
      @gdk_frame_clock_private.not_nil!
    end

  end
end

