module Gst
  class BufferPoolPrivate
    include GObject::WrappedType

    def initialize(@gst_buffer_pool_private)
    end

    def to_unsafe
      @gst_buffer_pool_private.not_nil!
    end

  end
end

