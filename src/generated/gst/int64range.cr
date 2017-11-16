module Gst
  class Int64Range
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::Int64Range*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::Int64Range*)
    end

  end
end

