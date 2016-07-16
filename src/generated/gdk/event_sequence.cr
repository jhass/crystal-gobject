module Gdk
  class EventSequence
    include GObject::WrappedType

    @gdk_event_sequence : LibGdk::EventSequence*?
    def initialize(@gdk_event_sequence : LibGdk::EventSequence*)
    end

    def to_unsafe
      @gdk_event_sequence.not_nil!.as(Void*)
    end

  end
end

