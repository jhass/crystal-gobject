module Gdk
  class EventVisibility
    include GObject::WrappedType

    @gdk_event_visibility : LibGdk::EventVisibility*?
    def initialize(@gdk_event_visibility : LibGdk::EventVisibility*)
    end

    def to_unsafe
      @gdk_event_visibility.not_nil!
    end

  end
end

