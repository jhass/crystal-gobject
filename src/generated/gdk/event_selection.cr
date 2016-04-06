module Gdk
  class EventSelection
    include GObject::WrappedType

    def initialize(@gdk_event_selection)
    end

    def to_unsafe
      @gdk_event_selection.not_nil!
    end

  end
end

