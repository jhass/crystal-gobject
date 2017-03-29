require "./volume_monitor"

module Gio
  class NativeVolumeMonitor < VolumeMonitor
    @gio_native_volume_monitor : LibGio::NativeVolumeMonitor*?
    def initialize(@gio_native_volume_monitor : LibGio::NativeVolumeMonitor*)
    end

    def to_unsafe
      @gio_native_volume_monitor.not_nil!
    end

  end
end

