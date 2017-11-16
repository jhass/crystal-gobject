module Gdk
  class EventSequence
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGdk::EventSequence*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGdk::EventSequence*)
    end

  end
end

