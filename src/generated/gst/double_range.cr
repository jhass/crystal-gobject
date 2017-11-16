module Gst
  class DoubleRange
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::DoubleRange*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::DoubleRange*)
    end

  end
end

