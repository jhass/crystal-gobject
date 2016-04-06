module Gdk
  class EventTouchpadSwipe
    include GObject::WrappedType

    def initialize(@gdk_event_touchpad_swipe)
    end

    def to_unsafe
      @gdk_event_touchpad_swipe.not_nil!
    end

  end
end

