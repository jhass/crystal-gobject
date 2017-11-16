module Gio
  class UnixMountMonitor < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::UnixMountMonitor*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::UnixMountMonitor*)
    end

    def self.new : self
      __return_value = LibGio.unix_mount_monitor_new
      cast Gio::UnixMountMonitor.new(__return_value)
    end

    def self.get
      __return_value = LibGio.unix_mount_monitor_get
      Gio::UnixMountMonitor.new(__return_value)
    end

    def rate_limit=(limit_msec)
      LibGio.unix_mount_monitor_set_rate_limit(@pointer.as(LibGio::UnixMountMonitor*), Int32.new(limit_msec))
      nil
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

