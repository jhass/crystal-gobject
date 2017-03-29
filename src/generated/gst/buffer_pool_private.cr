module Gst
  class BufferPoolPrivate
    include GObject::WrappedType

    @gst_buffer_pool_private : LibGst::BufferPoolPrivate*?
    def initialize(@gst_buffer_pool_private : LibGst::BufferPoolPrivate*)
    end

    def to_unsafe
      @gst_buffer_pool_private.not_nil!
    end

  end
end

