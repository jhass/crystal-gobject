module Gdk
  class FrameClockPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGdk::FrameClockPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGdk::FrameClockPrivate*)
    end

  end
end

