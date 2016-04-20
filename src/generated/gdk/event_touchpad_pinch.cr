module Gdk
  class EventTouchpadPinch
    include GObject::WrappedType

    @gdk_event_touchpad_pinch : LibGdk::EventTouchpadPinch*?
    def initialize(@gdk_event_touchpad_pinch : LibGdk::EventTouchpadPinch*)
    end

    def to_unsafe
      @gdk_event_touchpad_pinch.not_nil!
    end

  end
end

