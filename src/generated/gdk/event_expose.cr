module Gdk
  class EventExpose
    include GObject::WrappedType

    def initialize(@gdk_event_expose)
    end

    def to_unsafe
      @gdk_event_expose.not_nil!
    end

  end
end

