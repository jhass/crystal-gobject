module Gdk
  class EventScroll
    include GObject::WrappedType

    @gdk_event_scroll : LibGdk::EventScroll*?
    def initialize(@gdk_event_scroll : LibGdk::EventScroll*)
    end

    def to_unsafe
      @gdk_event_scroll.not_nil!
    end

  end
end

