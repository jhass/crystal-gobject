module Gio
  class FileMonitor < GObject::Object
    def initialize @gio_file_monitor
    end

    def to_unsafe
      @gio_file_monitor.not_nil!
    end




    def cancel
      __return_value = LibGio.file_monitor_cancel((to_unsafe as LibGio::FileMonitor*))
      __return_value
    end

    def emit_event(child, other_file, event_type)
      __return_value = LibGio.file_monitor_emit_event((to_unsafe as LibGio::FileMonitor*), (child.to_unsafe as LibGio::File*), (other_file.to_unsafe as LibGio::File*), event_type)
      __return_value
    end

    def is_cancelled
      __return_value = LibGio.file_monitor_is_cancelled((to_unsafe as LibGio::FileMonitor*))
      __return_value
    end

    def rate_limit=(limit_msecs)
      __return_value = LibGio.file_monitor_set_rate_limit((to_unsafe as LibGio::FileMonitor*), Int32.cast(limit_msecs))
      __return_value
    end

  end
end

