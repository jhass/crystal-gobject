module Gst
  class BusPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::BusPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::BusPrivate*)
    end

  end
end

