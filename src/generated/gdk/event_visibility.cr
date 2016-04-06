module Gdk
  class EventVisibility
    include GObject::WrappedType

    def initialize(@gdk_event_visibility)
    end

    def to_unsafe
      @gdk_event_visibility.not_nil!
    end

  end
end

