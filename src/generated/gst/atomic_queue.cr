module Gst
  class AtomicQueue
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::AtomicQueue*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::AtomicQueue*)
    end

    def self.new(initial_size) : self
      __return_value = LibGst.atomic_queue_new(UInt32.new(initial_size))
      cast Gst::AtomicQueue.new(__return_value)
    end

    def length
      __return_value = LibGst.atomic_queue_length(@pointer.as(LibGst::AtomicQueue*))
      __return_value
    end

    def peek
      LibGst.atomic_queue_peek(@pointer.as(LibGst::AtomicQueue*))
      nil
    end

    def pop
      LibGst.atomic_queue_pop(@pointer.as(LibGst::AtomicQueue*))
      nil
    end

    def push(data)
      LibGst.atomic_queue_push(@pointer.as(LibGst::AtomicQueue*), data ? data : nil)
      nil
    end

    def ref
      LibGst.atomic_queue_ref(@pointer.as(LibGst::AtomicQueue*))
      nil
    end

    def unref
      LibGst.atomic_queue_unref(@pointer.as(LibGst::AtomicQueue*))
      nil
    end

  end
end

