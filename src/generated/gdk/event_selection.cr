module Gdk
  class EventSelection
    include GObject::WrappedType

    @gdk_event_selection : LibGdk::EventSelection*?
    def initialize(@gdk_event_selection : LibGdk::EventSelection*)
    end

    def to_unsafe
      @gdk_event_selection.not_nil!
    end

  end
end

