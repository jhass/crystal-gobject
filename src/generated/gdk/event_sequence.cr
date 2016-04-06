module Gdk
  class EventSequence
    include GObject::WrappedType

    def initialize(@gdk_event_sequence)
    end

    def to_unsafe
      @gdk_event_sequence.not_nil!
    end

  end
end

