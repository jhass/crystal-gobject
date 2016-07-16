module GLib
  class AsyncQueue
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGLib::AsyncQueue*))
    end

    @g_lib_async_queue : LibGLib::AsyncQueue*?
    def initialize(@g_lib_async_queue : LibGLib::AsyncQueue*)
    end

    def to_unsafe
      @g_lib_async_queue.not_nil!
    end

    def length
      __return_value = LibGLib.async_queue_length(to_unsafe.as(LibGLib::AsyncQueue*))
      __return_value
    end

    def length_unlocked
      __return_value = LibGLib.async_queue_length_unlocked(to_unsafe.as(LibGLib::AsyncQueue*))
      __return_value
    end

    def lock
      __return_value = LibGLib.async_queue_lock(to_unsafe.as(LibGLib::AsyncQueue*))
      __return_value
    end

    def pop
      __return_value = LibGLib.async_queue_pop(to_unsafe.as(LibGLib::AsyncQueue*))
      __return_value if __return_value
    end

    def pop_unlocked
      __return_value = LibGLib.async_queue_pop_unlocked(to_unsafe.as(LibGLib::AsyncQueue*))
      __return_value if __return_value
    end

    def push(data)
      __return_value = LibGLib.async_queue_push(to_unsafe.as(LibGLib::AsyncQueue*), data && data)
      __return_value
    end

    def push_front(item)
      __return_value = LibGLib.async_queue_push_front(to_unsafe.as(LibGLib::AsyncQueue*), item && item)
      __return_value
    end

    def push_front_unlocked(item)
      __return_value = LibGLib.async_queue_push_front_unlocked(to_unsafe.as(LibGLib::AsyncQueue*), item && item)
      __return_value
    end

    def push_unlocked(data)
      __return_value = LibGLib.async_queue_push_unlocked(to_unsafe.as(LibGLib::AsyncQueue*), data && data)
      __return_value
    end

    def ref_unlocked
      __return_value = LibGLib.async_queue_ref_unlocked(to_unsafe.as(LibGLib::AsyncQueue*))
      __return_value
    end

    def remove(item)
      __return_value = LibGLib.async_queue_remove(to_unsafe.as(LibGLib::AsyncQueue*), item && item)
      __return_value
    end

    def remove_unlocked(item)
      __return_value = LibGLib.async_queue_remove_unlocked(to_unsafe.as(LibGLib::AsyncQueue*), item && item)
      __return_value
    end

    def timed_pop(end_time)
      __return_value = LibGLib.async_queue_timed_pop(to_unsafe.as(LibGLib::AsyncQueue*), end_time.to_unsafe.as(LibGLib::TimeVal*))
      __return_value if __return_value
    end

    def timed_pop_unlocked(end_time)
      __return_value = LibGLib.async_queue_timed_pop_unlocked(to_unsafe.as(LibGLib::AsyncQueue*), end_time.to_unsafe.as(LibGLib::TimeVal*))
      __return_value if __return_value
    end

    def timeout_pop(timeout)
      __return_value = LibGLib.async_queue_timeout_pop(to_unsafe.as(LibGLib::AsyncQueue*), UInt64.new(timeout))
      __return_value if __return_value
    end

    def timeout_pop_unlocked(timeout)
      __return_value = LibGLib.async_queue_timeout_pop_unlocked(to_unsafe.as(LibGLib::AsyncQueue*), UInt64.new(timeout))
      __return_value if __return_value
    end

    def try_pop
      __return_value = LibGLib.async_queue_try_pop(to_unsafe.as(LibGLib::AsyncQueue*))
      __return_value if __return_value
    end

    def try_pop_unlocked
      __return_value = LibGLib.async_queue_try_pop_unlocked(to_unsafe.as(LibGLib::AsyncQueue*))
      __return_value if __return_value
    end

    def unlock
      __return_value = LibGLib.async_queue_unlock(to_unsafe.as(LibGLib::AsyncQueue*))
      __return_value
    end

    def unref
      __return_value = LibGLib.async_queue_unref(to_unsafe.as(LibGLib::AsyncQueue*))
      __return_value
    end

    def unref_and_unlock
      __return_value = LibGLib.async_queue_unref_and_unlock(to_unsafe.as(LibGLib::AsyncQueue*))
      __return_value
    end

  end
end

