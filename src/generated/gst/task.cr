require "./object"

module Gst
  class Task < Object
    @pointer : Void*
    def initialize(pointer : LibGst::Task*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::Task*)
    end

    def self.new(func, user_data, notify) : self
      __return_value = LibGst.task_new(func, user_data ? user_data : nil, notify)
      cast Gst::Task.new(__return_value)
    end

    def self.cleanup_all
      LibGst.task_cleanup_all
      nil
    end

    def pool
      __return_value = LibGst.task_get_pool(@pointer.as(LibGst::Task*))
      Gst::TaskPool.new(__return_value)
    end

    def state
      __return_value = LibGst.task_get_state(@pointer.as(LibGst::Task*))
      __return_value
    end

    def join
      __return_value = LibGst.task_join(@pointer.as(LibGst::Task*))
      __return_value
    end

    def pause
      __return_value = LibGst.task_pause(@pointer.as(LibGst::Task*))
      __return_value
    end

    def set_enter_callback(enter_func, user_data, notify)
      LibGst.task_set_enter_callback(@pointer.as(LibGst::Task*), enter_func, user_data ? user_data : nil, notify)
      nil
    end

    def set_leave_callback(leave_func, user_data, notify)
      LibGst.task_set_leave_callback(@pointer.as(LibGst::Task*), leave_func, user_data ? user_data : nil, notify)
      nil
    end

    def lock=(mutex)
      LibGst.task_set_lock(@pointer.as(LibGst::Task*), mutex.to_unsafe.as(LibGLib::RecMutex*))
      nil
    end

    def pool=(pool)
      LibGst.task_set_pool(@pointer.as(LibGst::Task*), pool.to_unsafe.as(LibGst::TaskPool*))
      nil
    end

    def state=(state : Gst::TaskState)
      __return_value = LibGst.task_set_state(@pointer.as(LibGst::Task*), state)
      __return_value
    end

    def start
      __return_value = LibGst.task_start(@pointer.as(LibGst::Task*))
      __return_value
    end

    def stop
      __return_value = LibGst.task_stop(@pointer.as(LibGst::Task*))
      __return_value
    end

  end
end

