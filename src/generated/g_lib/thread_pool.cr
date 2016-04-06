module GLib
  class ThreadPool
    include GObject::WrappedType

    def initialize(@g_lib_thread_pool)
    end

    def to_unsafe
      @g_lib_thread_pool.not_nil!
    end

    def free(immediate, wait)
      __return_value = LibGLib.thread_pool_free((to_unsafe as LibGLib::ThreadPool*), immediate, wait)
      __return_value
    end

    def max_threads
      __return_value = LibGLib.thread_pool_get_max_threads((to_unsafe as LibGLib::ThreadPool*))
      __return_value
    end

    def num_threads
      __return_value = LibGLib.thread_pool_get_num_threads((to_unsafe as LibGLib::ThreadPool*))
      __return_value
    end

    def move_to_front(data)
      __return_value = LibGLib.thread_pool_move_to_front((to_unsafe as LibGLib::ThreadPool*), data)
      __return_value
    end

    def push(data)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.thread_pool_push((to_unsafe as LibGLib::ThreadPool*), data, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def set_max_threads(max_threads)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.thread_pool_set_max_threads((to_unsafe as LibGLib::ThreadPool*), Int32.new(max_threads), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def unprocessed
      __return_value = LibGLib.thread_pool_unprocessed((to_unsafe as LibGLib::ThreadPool*))
      __return_value
    end

    def self.max_idle_time
      __return_value = LibGLib.thread_pool_get_max_idle_time
      __return_value
    end

    def self.max_unused_threads
      __return_value = LibGLib.thread_pool_get_max_unused_threads
      __return_value
    end

    def self.num_unused_threads
      __return_value = LibGLib.thread_pool_get_num_unused_threads
      __return_value
    end

    def self.set_max_idle_time(interval)
      __return_value = LibGLib.thread_pool_set_max_idle_time(UInt32.new(interval))
      __return_value
    end

    def self.set_max_unused_threads(max_threads)
      __return_value = LibGLib.thread_pool_set_max_unused_threads(Int32.new(max_threads))
      __return_value
    end

    def self.stop_unused_threads
      __return_value = LibGLib.thread_pool_stop_unused_threads
      __return_value
    end

  end
end

