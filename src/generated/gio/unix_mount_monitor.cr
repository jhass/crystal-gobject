module Gio
  class UnixMountMonitor < GObject::Object
    def initialize(@gio_unix_mount_monitor)
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

    alias MountpointsChangedSignal = UnixMountMonitor -> 
    def on_mountpoints_changed(&__block : MountpointsChangedSignal)
      __callback = ->(_arg0 : LibGio::UnixMountMonitor*) {
       __return_value = __block.call(UnixMountMonitor.new(_arg0))
       __return_value
      }
      connect("mountpoints-changed", __callback)
    end

    alias MountsChangedSignal = UnixMountMonitor -> 
    def on_mounts_changed(&__block : MountsChangedSignal)
      __callback = ->(_arg0 : LibGio::UnixMountMonitor*) {
       __return_value = __block.call(UnixMountMonitor.new(_arg0))
       __return_value
      }
      connect("mounts-changed", __callback)
    end

  end
end

