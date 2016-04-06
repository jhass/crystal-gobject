module Gst
  class AtomicQueue
    include GObject::WrappedType

    def initialize(@gst_atomic_queue)
    end

    def to_unsafe
      @gst_atomic_queue.not_nil!
    end

    def self.new_internal(initial_size)
      __return_value = LibGst.atomic_queue_new(UInt32.new(initial_size))
      Gst::AtomicQueue.new(__return_value)
    end

    def length
      __return_value = LibGst.atomic_queue_length((to_unsafe as LibGst::AtomicQueue*))
      __return_value
    end

    def peek
      __return_value = LibGst.atomic_queue_peek((to_unsafe as LibGst::AtomicQueue*))
      __return_value if __return_value
    end

    def pop
      __return_value = LibGst.atomic_queue_pop((to_unsafe as LibGst::AtomicQueue*))
      __return_value
    end

    def push(data)
      __return_value = LibGst.atomic_queue_push((to_unsafe as LibGst::AtomicQueue*), data)
      __return_value
    end

    def ref
      __return_value = LibGst.atomic_queue_ref((to_unsafe as LibGst::AtomicQueue*))
      __return_value
    end

    def unref
      __return_value = LibGst.atomic_queue_unref((to_unsafe as LibGst::AtomicQueue*))
      __return_value
    end

  end
end

