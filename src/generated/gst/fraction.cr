module Gst
  class Fraction
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::Fraction*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::Fraction*)
    end

  end
end

