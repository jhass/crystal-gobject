module Gdk
  class EventProximity
    include GObject::WrappedType

    def initialize(@gdk_event_proximity)
    end

    def to_unsafe
      @gdk_event_proximity.not_nil!
    end

  end
end

