module Gst
  class BinPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::BinPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::BinPrivate*)
    end

  end
end

