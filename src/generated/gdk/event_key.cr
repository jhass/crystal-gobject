module Gdk
  class EventKey
    include GObject::WrappedType

    def initialize(@gdk_event_key)
    end

    def to_unsafe
      @gdk_event_key.not_nil!
    end

  end
end

