module Gdk
  class EventOwnerChange
    include GObject::WrappedType

    @gdk_event_owner_change : LibGdk::EventOwnerChange*?
    def initialize(@gdk_event_owner_change : LibGdk::EventOwnerChange*)
    end

    def to_unsafe
      @gdk_event_owner_change.not_nil!
    end

  end
end

