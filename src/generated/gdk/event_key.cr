module Gdk
  class EventKey
    include GObject::WrappedType

    @gdk_event_key : LibGdk::EventKey*?
    def initialize(@gdk_event_key : LibGdk::EventKey*)
    end

    def to_unsafe
      @gdk_event_key.not_nil!
    end

  end
end

