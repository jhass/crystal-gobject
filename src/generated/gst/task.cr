require "./object"

module Gst
  class Task < Object
    def initialize(@gst_task)
    end

    def to_unsafe
      @gst_task.not_nil!
    end

    def self.new_internal(func : LibGst::TaskFunction, user_data, notify : LibGLib::DestroyNotify)
      __return_value = LibGst.task_new(func, user_data, notify)
      Gst::Task.new(__return_value)
    end

    def self.cleanup_all
      __return_value = LibGst.task_cleanup_all
      __return_value
    end

    def pool
      __return_value = LibGst.task_get_pool((to_unsafe as LibGst::Task*))
      Gst::TaskPool.new(__return_value)
    end

    def state
      __return_value = LibGst.task_get_state((to_unsafe as LibGst::Task*))
      __return_value
    end

    def join
      __return_value = LibGst.task_join((to_unsafe as LibGst::Task*))
      __return_value
    end

    def pause
      __return_value = LibGst.task_pause((to_unsafe as LibGst::Task*))
      __return_value
    end

    def set_enter_callback(enter_func : LibGst::TaskThreadFunc, user_data, notify : LibGLib::DestroyNotify)
      __return_value = LibGst.task_set_enter_callback((to_unsafe as LibGst::Task*), enter_func, user_data, notify)
      __return_value
    end

    def set_leave_callback(leave_func : LibGst::TaskThreadFunc, user_data, notify : LibGLib::DestroyNotify)
      __return_value = LibGst.task_set_leave_callback((to_unsafe as LibGst::Task*), leave_func, user_data, notify)
      __return_value
    end

    def lock=(mutex)
      __return_value = LibGst.task_set_lock((to_unsafe as LibGst::Task*), (mutex.to_unsafe as LibGLib::RecMutex*))
      __return_value
    end

    def pool=(pool)
      __return_value = LibGst.task_set_pool((to_unsafe as LibGst::Task*), (pool.to_unsafe as LibGst::TaskPool*))
      __return_value
    end

    def state=(state)
      __return_value = LibGst.task_set_state((to_unsafe as LibGst::Task*), state)
      __return_value
    end

    def start
      __return_value = LibGst.task_start((to_unsafe as LibGst::Task*))
      __return_value
    end

    def stop
      __return_value = LibGst.task_stop((to_unsafe as LibGst::Task*))
      __return_value
    end

  end
end

