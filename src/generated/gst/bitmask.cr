module Gst
  class Bitmask
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::Bitmask*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::Bitmask*)
    end

  end
end

