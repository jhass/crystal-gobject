module Gdk
  class EventGrabBroken
    include GObject::WrappedType

    def initialize(@gdk_event_grab_broken)
    end

    def to_unsafe
      @gdk_event_grab_broken.not_nil!
    end

  end
end

