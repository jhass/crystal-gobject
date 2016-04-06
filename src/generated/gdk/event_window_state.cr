module Gdk
  class EventWindowState
    include GObject::WrappedType

    def initialize(@gdk_event_window_state)
    end

    def to_unsafe
      @gdk_event_window_state.not_nil!
    end

  end
end

