require "./volume_monitor"

module Gio
  class NativeVolumeMonitor < VolumeMonitor
    def initialize(@gio_native_volume_monitor)
    end

    def to_unsafe
      @gio_native_volume_monitor.not_nil!
    end

  end
end

