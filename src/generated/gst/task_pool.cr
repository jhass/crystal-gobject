require "./object"

module Gst
  class TaskPool < Object
    @gst_task_pool : LibGst::TaskPool*?
    def initialize(@gst_task_pool : LibGst::TaskPool*)
    end

    def to_unsafe
      @gst_task_pool.not_nil!
    end

    def self.new : self
      __return_value = LibGst.task_pool_new
      cast Gst::TaskPool.new(__return_value)
    end

    def cleanup
      LibGst.task_pool_cleanup(to_unsafe.as(LibGst::TaskPool*))
      nil
    end

    def join(id)
      LibGst.task_pool_join(to_unsafe.as(LibGst::TaskPool*), id ? id : nil)
      nil
    end

    def prepare
      __error = Pointer(LibGLib::Error).null
      LibGst.task_pool_prepare(to_unsafe.as(LibGst::TaskPool*), pointerof(__error))
      GLib::Error.assert __error
      nil
    end

    def push(func, user_data)
      __error = Pointer(LibGLib::Error).null
      LibGst.task_pool_push(to_unsafe.as(LibGst::TaskPool*), func, user_data ? user_data : nil, pointerof(__error))
      GLib::Error.assert __error
      nil
    end

  end
end

