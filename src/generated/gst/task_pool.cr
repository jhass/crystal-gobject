require "./object"

module Gst
  class TaskPool < Object
    @pointer : Void*
    def initialize(pointer : LibGst::TaskPool*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::TaskPool*)
    end

    def self.new : self
      __return_value = LibGst.task_pool_new
      cast Gst::TaskPool.new(__return_value)
    end

    def cleanup
      LibGst.task_pool_cleanup(@pointer.as(LibGst::TaskPool*))
      nil
    end

    def join(id)
      LibGst.task_pool_join(@pointer.as(LibGst::TaskPool*), id ? id : nil)
      nil
    end

    def prepare # function
      __error = Pointer(LibGLib::Error).null
      LibGst.task_pool_prepare(@pointer.as(LibGst::TaskPool*), pointerof(__error))
      GLib::Error.assert __error
      nil
    end

    def push(func, user_data) # function
      __error = Pointer(LibGLib::Error).null
      LibGst.task_pool_push(@pointer.as(LibGst::TaskPool*), func, user_data ? user_data : nil, pointerof(__error))
      GLib::Error.assert __error
      nil
    end

  end
end

