module Gdk
  class EventProperty
    include GObject::WrappedType

    @gdk_event_property : LibGdk::EventProperty*?
    def initialize(@gdk_event_property : LibGdk::EventProperty*)
    end

    def to_unsafe
      @gdk_event_property.not_nil!
    end

  end
end

