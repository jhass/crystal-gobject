module Gdk
  class EventMotion
    include GObject::WrappedType

    def initialize(@gdk_event_motion)
    end

    def to_unsafe
      @gdk_event_motion.not_nil!
    end

  end
end

