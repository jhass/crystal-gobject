module Gdk
  class EventTouch
    include GObject::WrappedType

    def initialize(@gdk_event_touch)
    end

    def to_unsafe
      @gdk_event_touch.not_nil!
    end

  end
end

