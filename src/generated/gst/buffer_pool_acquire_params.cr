module Gst
  class BufferPoolAcquireParams
    include GObject::WrappedType

    def self.new(format : Gst::Format|Nil = nil, start : Int64|Nil = nil, stop : Int64|Nil = nil, flags : Gst::BufferPoolAcquireFlags|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(64, 0u8)
      new(ptr.as(LibGst::BufferPoolAcquireParams*)).tap do |object|
        object.format = format unless format.nil?
        object.start = start unless start.nil?
        object.stop = stop unless stop.nil?
        object.flags = flags unless flags.nil?
      end
    end

    @gst_buffer_pool_acquire_params : LibGst::BufferPoolAcquireParams*?
    def initialize(@gst_buffer_pool_acquire_params : LibGst::BufferPoolAcquireParams*)
    end

    def to_unsafe
      @gst_buffer_pool_acquire_params.not_nil!
    end

    def format
      (to_unsafe.value.format)
    end

    def format=(value : Gst::Format)
      to_unsafe.value.format = value
    end

    def start
      (to_unsafe.value.start)
    end

    def start=(value : Int64)
      to_unsafe.value.start = Int64.new(value)
    end

    def stop
      (to_unsafe.value.stop)
    end

    def stop=(value : Int64)
      to_unsafe.value.stop = Int64.new(value)
    end

    def flags
      (to_unsafe.value.flags)
    end

    def flags=(value : Gst::BufferPoolAcquireFlags)
      to_unsafe.value.flags = value
    end

    def _gst_reserved
      PointerIterator.new((to_unsafe.value._gst_reserved)) {|__item| __item }
    end

  end
end

