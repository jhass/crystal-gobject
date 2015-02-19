module Gio
  class VolumeMonitor < GObject::Object
    def initialize @gio_volume_monitor
    end

    def to_unsafe
      @gio_volume_monitor.not_nil!
    end

    def self.adopt_orphan_mount(mount)
      __return_value = LibGio.volume_monitor_adopt_orphan_mount((mount.to_unsafe as LibGio::Mount*))
      __return_value
    end

    def self.get
      __return_value = LibGio.volume_monitor_get
      Gio::VolumeMonitor.new(__return_value)
    end

    def connected_drives
      __return_value = LibGio.volume_monitor_get_connected_drives((to_unsafe as LibGio::VolumeMonitor*))
      __return_value
    end

    def mount_for_uuid(uuid)
      __return_value = LibGio.volume_monitor_get_mount_for_uuid((to_unsafe as LibGio::VolumeMonitor*), uuid)
      __return_value
    end

    def mounts
      __return_value = LibGio.volume_monitor_get_mounts((to_unsafe as LibGio::VolumeMonitor*))
      __return_value
    end

    def volume_for_uuid(uuid)
      __return_value = LibGio.volume_monitor_get_volume_for_uuid((to_unsafe as LibGio::VolumeMonitor*), uuid)
      __return_value
    end

    def volumes
      __return_value = LibGio.volume_monitor_get_volumes((to_unsafe as LibGio::VolumeMonitor*))
      __return_value
    end

  end
end

