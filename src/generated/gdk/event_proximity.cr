module Gdk
  class EventProximity
    include GObject::WrappedType

    @gdk_event_proximity : LibGdk::EventProximity*?
    def initialize(@gdk_event_proximity : LibGdk::EventProximity*)
    end

    def to_unsafe
      @gdk_event_proximity.not_nil!
    end

  end
end

