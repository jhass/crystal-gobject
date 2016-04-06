module GLib
  class Queue
    include GObject::WrappedType

    def initialize(@g_lib_queue)
    end

    def to_unsafe
      @g_lib_queue.not_nil!
    end

    def clear
      __return_value = LibGLib.queue_clear((to_unsafe as LibGLib::Queue*))
      __return_value
    end

    def free
      __return_value = LibGLib.queue_free((to_unsafe as LibGLib::Queue*))
      __return_value
    end

    def free_full(free_func : LibGLib::DestroyNotify)
      __return_value = LibGLib.queue_free_full((to_unsafe as LibGLib::Queue*), free_func)
      __return_value
    end

    def length
      __return_value = LibGLib.queue_get_length((to_unsafe as LibGLib::Queue*))
      __return_value
    end

    def index(data)
      __return_value = LibGLib.queue_index((to_unsafe as LibGLib::Queue*), data)
      __return_value
    end

    def init
      __return_value = LibGLib.queue_init((to_unsafe as LibGLib::Queue*))
      __return_value
    end

    def empty?
      __return_value = LibGLib.queue_is_empty((to_unsafe as LibGLib::Queue*))
      __return_value
    end

    def push_head(data)
      __return_value = LibGLib.queue_push_head((to_unsafe as LibGLib::Queue*), data)
      __return_value
    end

    def push_nth(data, n)
      __return_value = LibGLib.queue_push_nth((to_unsafe as LibGLib::Queue*), data, Int32.new(n))
      __return_value
    end

    def push_tail(data)
      __return_value = LibGLib.queue_push_tail((to_unsafe as LibGLib::Queue*), data)
      __return_value
    end

    def remove(data)
      __return_value = LibGLib.queue_remove((to_unsafe as LibGLib::Queue*), data)
      __return_value
    end

    def remove_all(data)
      __return_value = LibGLib.queue_remove_all((to_unsafe as LibGLib::Queue*), data)
      __return_value
    end

    def reverse
      __return_value = LibGLib.queue_reverse((to_unsafe as LibGLib::Queue*))
      __return_value
    end

  end
end

