module Gst
  class AllocatorPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::AllocatorPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::AllocatorPrivate*)
    end

  end
end

