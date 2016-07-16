module Gst
  class BufferPoolPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGst::BufferPoolPrivate*))
    end

    @gst_buffer_pool_private : LibGst::BufferPoolPrivate*?
    def initialize(@gst_buffer_pool_private : LibGst::BufferPoolPrivate*)
    end

    def to_unsafe
      @gst_buffer_pool_private.not_nil!.as(Void*)
    end

  end
end

