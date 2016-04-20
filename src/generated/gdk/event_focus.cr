module Gdk
  class EventFocus
    include GObject::WrappedType

    @gdk_event_focus : LibGdk::EventFocus*?
    def initialize(@gdk_event_focus : LibGdk::EventFocus*)
    end

    def to_unsafe
      @gdk_event_focus.not_nil!
    end

  end
end

