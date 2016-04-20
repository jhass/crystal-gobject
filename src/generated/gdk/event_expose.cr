module Gdk
  class EventExpose
    include GObject::WrappedType

    @gdk_event_expose : LibGdk::EventExpose*?
    def initialize(@gdk_event_expose : LibGdk::EventExpose*)
    end

    def to_unsafe
      @gdk_event_expose.not_nil!
    end

  end
end

