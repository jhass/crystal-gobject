module Gdk
  class EventTouchpadPinch
    include GObject::WrappedType

    def initialize(@gdk_event_touchpad_pinch)
    end

    def to_unsafe
      @gdk_event_touchpad_pinch.not_nil!
    end

  end
end

