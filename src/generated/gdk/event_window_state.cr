module Gdk
  class EventWindowState
    include GObject::WrappedType

    @gdk_event_window_state : LibGdk::EventWindowState*?
    def initialize(@gdk_event_window_state : LibGdk::EventWindowState*)
    end

    def to_unsafe
      @gdk_event_window_state.not_nil!
    end

  end
end

