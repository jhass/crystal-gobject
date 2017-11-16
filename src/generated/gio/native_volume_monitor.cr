require "./volume_monitor"

module Gio
  class NativeVolumeMonitor < VolumeMonitor
    @pointer : Void*
    def initialize(pointer : LibGio::NativeVolumeMonitor*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::NativeVolumeMonitor*)
    end

  end
end

