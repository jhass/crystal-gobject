module Gst
  class AtomicQueue
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGst::AtomicQueue*))
    end

    @gst_atomic_queue : LibGst::AtomicQueue*?
    def initialize(@gst_atomic_queue : LibGst::AtomicQueue*)
    end

    def to_unsafe
      @gst_atomic_queue.not_nil!
    end

    def self.new(initial_size) : self
      __return_value = LibGst.atomic_queue_new(UInt32.new(initial_size))
      cast Gst::AtomicQueue.new(__return_value)
    end

    def length
      __return_value = LibGst.atomic_queue_length(to_unsafe.as(LibGst::AtomicQueue*))
      __return_value
    end

    def peek
      __return_value = LibGst.atomic_queue_peek(to_unsafe.as(LibGst::AtomicQueue*))
      __return_value if __return_value
    end

    def pop
      __return_value = LibGst.atomic_queue_pop(to_unsafe.as(LibGst::AtomicQueue*))
      __return_value if __return_value
    end

    def push(data)
      __return_value = LibGst.atomic_queue_push(to_unsafe.as(LibGst::AtomicQueue*), data && data)
      __return_value
    end

    def ref
      __return_value = LibGst.atomic_queue_ref(to_unsafe.as(LibGst::AtomicQueue*))
      __return_value
    end

    def unref
      __return_value = LibGst.atomic_queue_unref(to_unsafe.as(LibGst::AtomicQueue*))
      __return_value
    end

  end
end

