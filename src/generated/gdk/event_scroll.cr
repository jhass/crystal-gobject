module Gdk
  class EventScroll
    include GObject::WrappedType

    def initialize(@gdk_event_scroll)
    end

    def to_unsafe
      @gdk_event_scroll.not_nil!
    end

  end
end

