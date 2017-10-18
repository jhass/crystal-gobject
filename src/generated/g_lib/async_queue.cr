module GLib
  class AsyncQueue
    include GObject::WrappedType

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
      LibGLib.async_queue_lock(to_unsafe.as(LibGLib::AsyncQueue*))
      nil
    end

    def pop
      LibGLib.async_queue_pop(to_unsafe.as(LibGLib::AsyncQueue*))
      nil
    end

    def pop_unlocked
      LibGLib.async_queue_pop_unlocked(to_unsafe.as(LibGLib::AsyncQueue*))
      nil
    end

    def push(data)
      LibGLib.async_queue_push(to_unsafe.as(LibGLib::AsyncQueue*), data ? data : nil)
      nil
    end

    def push_front(item)
      LibGLib.async_queue_push_front(to_unsafe.as(LibGLib::AsyncQueue*), item ? item : nil)
      nil
    end

    def push_front_unlocked(item)
      LibGLib.async_queue_push_front_unlocked(to_unsafe.as(LibGLib::AsyncQueue*), item ? item : nil)
      nil
    end

    def push_unlocked(data)
      LibGLib.async_queue_push_unlocked(to_unsafe.as(LibGLib::AsyncQueue*), data ? data : nil)
      nil
    end

    def ref_unlocked
      LibGLib.async_queue_ref_unlocked(to_unsafe.as(LibGLib::AsyncQueue*))
      nil
    end

    def remove(item)
      __return_value = LibGLib.async_queue_remove(to_unsafe.as(LibGLib::AsyncQueue*), item ? item : nil)
      __return_value
    end

    def remove_unlocked(item)
      __return_value = LibGLib.async_queue_remove_unlocked(to_unsafe.as(LibGLib::AsyncQueue*), item ? item : nil)
      __return_value
    end

    def timed_pop(end_time)
      LibGLib.async_queue_timed_pop(to_unsafe.as(LibGLib::AsyncQueue*), end_time.to_unsafe.as(LibGLib::TimeVal*))
      nil
    end

    def timed_pop_unlocked(end_time)
      LibGLib.async_queue_timed_pop_unlocked(to_unsafe.as(LibGLib::AsyncQueue*), end_time.to_unsafe.as(LibGLib::TimeVal*))
      nil
    end

    def timeout_pop(timeout)
      LibGLib.async_queue_timeout_pop(to_unsafe.as(LibGLib::AsyncQueue*), UInt64.new(timeout))
      nil
    end

    def timeout_pop_unlocked(timeout)
      LibGLib.async_queue_timeout_pop_unlocked(to_unsafe.as(LibGLib::AsyncQueue*), UInt64.new(timeout))
      nil
    end

    def try_pop
      LibGLib.async_queue_try_pop(to_unsafe.as(LibGLib::AsyncQueue*))
      nil
    end

    def try_pop_unlocked
      LibGLib.async_queue_try_pop_unlocked(to_unsafe.as(LibGLib::AsyncQueue*))
      nil
    end

    def unlock
      LibGLib.async_queue_unlock(to_unsafe.as(LibGLib::AsyncQueue*))
      nil
    end

    def unref
      LibGLib.async_queue_unref(to_unsafe.as(LibGLib::AsyncQueue*))
      nil
    end

    def unref_and_unlock
      LibGLib.async_queue_unref_and_unlock(to_unsafe.as(LibGLib::AsyncQueue*))
      nil
    end

  end
end

