module Gdk
  class EventTouch
    include GObject::WrappedType

    @gdk_event_touch : LibGdk::EventTouch*?
    def initialize(@gdk_event_touch : LibGdk::EventTouch*)
    end

    def to_unsafe
      @gdk_event_touch.not_nil!
    end

  end
end

