module Gio
  class IOSchedulerJob
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::IOSchedulerJob*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::IOSchedulerJob*)
    end

    def send_to_mainloop(func, user_data, notify)
      __return_value = LibGio.i_o_scheduler_job_send_to_mainloop(@pointer.as(LibGio::IOSchedulerJob*), func, user_data ? user_data : nil, notify ? notify : nil)
      __return_value
    end

    def send_to_mainloop_async(func, user_data, notify)
      LibGio.i_o_scheduler_job_send_to_mainloop_async(@pointer.as(LibGio::IOSchedulerJob*), func, user_data ? user_data : nil, notify ? notify : nil)
      nil
    end

  end
end

