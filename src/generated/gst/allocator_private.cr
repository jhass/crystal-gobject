module Gst
  class AllocatorPrivate
    include GObject::WrappedType

    @gst_allocator_private : LibGst::AllocatorPrivate*?
    def initialize(@gst_allocator_private : LibGst::AllocatorPrivate*)
    end

    def to_unsafe
      @gst_allocator_private.not_nil!
    end

  end
end

