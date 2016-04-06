module Gdk
  class EventOwnerChange
    include GObject::WrappedType

    def initialize(@gdk_event_owner_change)
    end

    def to_unsafe
      @gdk_event_owner_change.not_nil!
    end

  end
end

