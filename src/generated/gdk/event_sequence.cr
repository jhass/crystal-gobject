module Gdk
  class EventSequence
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGdk::EventSequence*))
    end

    @gdk_event_sequence : LibGdk::EventSequence*?
    def initialize(@gdk_event_sequence : LibGdk::EventSequence*)
    end

    def to_unsafe
      @gdk_event_sequence.not_nil!
    end

  end
end

