module Gio
  class IOSchedulerJob
    include GObject::WrappedType

    def initialize(@gio_i_o_scheduler_job)
    end

    def to_unsafe
      @gio_i_o_scheduler_job.not_nil!
    end

    def send_to_mainloop(func : LibGLib::SourceFunc, user_data, notify : LibGLib::DestroyNotify?)
      __return_value = LibGio.i_o_scheduler_job_send_to_mainloop((to_unsafe as LibGio::IOSchedulerJob*), func, user_data, notify && notify)
      __return_value
    end

    def send_to_mainloop_async(func : LibGLib::SourceFunc, user_data, notify : LibGLib::DestroyNotify?)
      __return_value = LibGio.i_o_scheduler_job_send_to_mainloop_async((to_unsafe as LibGio::IOSchedulerJob*), func, user_data, notify && notify)
      __return_value
    end

  end
end

