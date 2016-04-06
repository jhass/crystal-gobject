module Gst
  class BufferPoolAcquireParams
    include GObject::WrappedType

    def initialize(@gst_buffer_pool_acquire_params)
    end

    def to_unsafe
      @gst_buffer_pool_acquire_params.not_nil!
    end

  end
end

