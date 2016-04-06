module Gdk
  class EventAny
    include GObject::WrappedType

    def initialize(@gdk_event_any)
    end

    def to_unsafe
      @gdk_event_any.not_nil!
    end

  end
end

