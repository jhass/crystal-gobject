require "./object"

module Gst
  class TaskPool < Object
    def initialize(@gst_task_pool)
    end

    def to_unsafe
      @gst_task_pool.not_nil!
    end

    def self.new_internal
      __return_value = LibGst.task_pool_new
      Gst::TaskPool.new(__return_value)
    end

    def cleanup
      __return_value = LibGst.task_pool_cleanup((to_unsafe as LibGst::TaskPool*))
      __return_value
    end

    def join(id)
      __return_value = LibGst.task_pool_join((to_unsafe as LibGst::TaskPool*), id)
      __return_value
    end

    def prepare
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGst.task_pool_prepare((to_unsafe as LibGst::TaskPool*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def push(func : LibGst::TaskPoolFunction, user_data)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGst.task_pool_push((to_unsafe as LibGst::TaskPool*), func, user_data, pointerof(__error))
      GLib::Error.assert __error
      __return_value if __return_value
    end

  end
end

