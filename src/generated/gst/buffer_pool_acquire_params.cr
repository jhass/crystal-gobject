module Gst
  class BufferPoolAcquireParams
    include GObject::WrappedType

    @gst_buffer_pool_acquire_params : LibGst::BufferPoolAcquireParams*?
    def initialize(@gst_buffer_pool_acquire_params : LibGst::BufferPoolAcquireParams*)
    end

    def to_unsafe
      @gst_buffer_pool_acquire_params.not_nil!
    end

  end
end

