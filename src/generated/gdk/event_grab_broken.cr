module Gdk
  class EventGrabBroken
    include GObject::WrappedType

    @gdk_event_grab_broken : LibGdk::EventGrabBroken*?
    def initialize(@gdk_event_grab_broken : LibGdk::EventGrabBroken*)
    end

    def to_unsafe
      @gdk_event_grab_broken.not_nil!
    end

  end
end

