module Gdk
  class EventMotion
    include GObject::WrappedType

    @gdk_event_motion : LibGdk::EventMotion*?
    def initialize(@gdk_event_motion : LibGdk::EventMotion*)
    end

    def to_unsafe
      @gdk_event_motion.not_nil!
    end

  end
end

