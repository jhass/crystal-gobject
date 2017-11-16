module Gst
  class IntRange
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::IntRange*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::IntRange*)
    end

  end
end

