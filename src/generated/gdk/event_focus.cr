module Gdk
  class EventFocus
    include GObject::WrappedType

    def initialize(@gdk_event_focus)
    end

    def to_unsafe
      @gdk_event_focus.not_nil!
    end

  end
end

