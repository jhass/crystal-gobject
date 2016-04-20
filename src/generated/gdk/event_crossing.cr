module Gdk
  class EventCrossing
    include GObject::WrappedType

    @gdk_event_crossing : LibGdk::EventCrossing*?
    def initialize(@gdk_event_crossing : LibGdk::EventCrossing*)
    end

    def to_unsafe
      @gdk_event_crossing.not_nil!
    end

  end
end

