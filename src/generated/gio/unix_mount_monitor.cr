module Gio
  class UnixMountMonitor < GObject::Object
    def initialize @gio_unix_mount_monitor
    end

    def to_unsafe
      @gio_unix_mount_monitor.not_nil!
    end

    def self.new_internal
      __return_value = LibGio.unix_mount_monitor_new
      Gio::UnixMountMonitor.new(__return_value)
    end

    def self.get
      __return_value = LibGio.unix_mount_monitor_get
      Gio::UnixMountMonitor.new(__return_value)
    end

    def rate_limit=(limit_msec)
      __return_value = LibGio.unix_mount_monitor_set_rate_limit((to_unsafe as LibGio::UnixMountMonitor*), Int32.new(limit_msec))
      __return_value
    end

  end
end

