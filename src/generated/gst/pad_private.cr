module Gst
  class PadPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::PadPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::PadPrivate*)
    end

  end
end

