module Gst
  class AllocatorPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGst::AllocatorPrivate*))
    end

    @gst_allocator_private : LibGst::AllocatorPrivate*?
    def initialize(@gst_allocator_private : LibGst::AllocatorPrivate*)
    end

    def to_unsafe
      @gst_allocator_private.not_nil!.as(Void*)
    end

  end
end

