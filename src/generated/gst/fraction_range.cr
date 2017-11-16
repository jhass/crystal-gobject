module Gst
  class FractionRange
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::FractionRange*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::FractionRange*)
    end

  end
end

