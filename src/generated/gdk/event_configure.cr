module Gdk
  class EventConfigure
    include GObject::WrappedType

    @gdk_event_configure : LibGdk::EventConfigure*?
    def initialize(@gdk_event_configure : LibGdk::EventConfigure*)
    end

    def to_unsafe
      @gdk_event_configure.not_nil!
    end

  end
end

