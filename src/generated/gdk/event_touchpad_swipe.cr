module Gdk
  class EventTouchpadSwipe
    include GObject::WrappedType

    @gdk_event_touchpad_swipe : LibGdk::EventTouchpadSwipe*?
    def initialize(@gdk_event_touchpad_swipe : LibGdk::EventTouchpadSwipe*)
    end

    def to_unsafe
      @gdk_event_touchpad_swipe.not_nil!
    end

  end
end

