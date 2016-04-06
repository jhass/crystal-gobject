module Gst
  class AllocatorPrivate
    include GObject::WrappedType

    def initialize(@gst_allocator_private)
    end

    def to_unsafe
      @gst_allocator_private.not_nil!
    end

  end
end

