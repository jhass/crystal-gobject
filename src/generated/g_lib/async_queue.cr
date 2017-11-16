module GLib
  class AsyncQueue
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::AsyncQueue*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::AsyncQueue*)
    end

    def length
      __return_value = LibGLib.async_queue_length(@pointer.as(LibGLib::AsyncQueue*))
      __return_value
    end

    def length_unlocked
      __return_value = LibGLib.async_queue_length_unlocked(@pointer.as(LibGLib::AsyncQueue*))
      __return_value
    end

    def lock
      LibGLib.async_queue_lock(@pointer.as(LibGLib::AsyncQueue*))
      nil
    end

    def pop
      LibGLib.async_queue_pop(@pointer.as(LibGLib::AsyncQueue*))
      nil
    end

    def pop_unlocked
      LibGLib.async_queue_pop_unlocked(@pointer.as(LibGLib::AsyncQueue*))
      nil
    end

    def push(data)
      LibGLib.async_queue_push(@pointer.as(LibGLib::AsyncQueue*), data ? data : nil)
      nil
    end

    def push_front(item)
      LibGLib.async_queue_push_front(@pointer.as(LibGLib::AsyncQueue*), item ? item : nil)
      nil
    end

    def push_front_unlocked(item)
      LibGLib.async_queue_push_front_unlocked(@pointer.as(LibGLib::AsyncQueue*), item ? item : nil)
      nil
    end

    def push_unlocked(data)
      LibGLib.async_queue_push_unlocked(@pointer.as(LibGLib::AsyncQueue*), data ? data : nil)
      nil
    end

    def ref_unlocked
      LibGLib.async_queue_ref_unlocked(@pointer.as(LibGLib::AsyncQueue*))
      nil
    end

    def remove(item)
      __return_value = LibGLib.async_queue_remove(@pointer.as(LibGLib::AsyncQueue*), item ? item : nil)
      __return_value
    end

    def remove_unlocked(item)
      __return_value = LibGLib.async_queue_remove_unlocked(@pointer.as(LibGLib::AsyncQueue*), item ? item : nil)
      __return_value
    end

    def timed_pop(end_time)
      LibGLib.async_queue_timed_pop(@pointer.as(LibGLib::AsyncQueue*), end_time.to_unsafe.as(LibGLib::TimeVal*))
      nil
    end

    def timed_pop_unlocked(end_time)
      LibGLib.async_queue_timed_pop_unlocked(@pointer.as(LibGLib::AsyncQueue*), end_time.to_unsafe.as(LibGLib::TimeVal*))
      nil
    end

    def timeout_pop(timeout)
      LibGLib.async_queue_timeout_pop(@pointer.as(LibGLib::AsyncQueue*), UInt64.new(timeout))
      nil
    end

    def timeout_pop_unlocked(timeout)
      LibGLib.async_queue_timeout_pop_unlocked(@pointer.as(LibGLib::AsyncQueue*), UInt64.new(timeout))
      nil
    end

    def try_pop
      LibGLib.async_queue_try_pop(@pointer.as(LibGLib::AsyncQueue*))
      nil
    end

    def try_pop_unlocked
      LibGLib.async_queue_try_pop_unlocked(@pointer.as(LibGLib::AsyncQueue*))
      nil
    end

    def unlock
      LibGLib.async_queue_unlock(@pointer.as(LibGLib::AsyncQueue*))
      nil
    end

    def unref
      LibGLib.async_queue_unref(@pointer.as(LibGLib::AsyncQueue*))
      nil
    end

    def unref_and_unlock
      LibGLib.async_queue_unref_and_unlock(@pointer.as(LibGLib::AsyncQueue*))
      nil
    end

  end
end

