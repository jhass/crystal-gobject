module Gdk
  class EventCrossing
    include GObject::WrappedType

    def initialize(@gdk_event_crossing)
    end

    def to_unsafe
      @gdk_event_crossing.not_nil!
    end

  end
end

