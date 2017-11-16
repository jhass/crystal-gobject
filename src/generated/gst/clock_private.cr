module Gst
  class ClockPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::ClockPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::ClockPrivate*)
    end

  end
end

