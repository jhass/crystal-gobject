module Gio
  class VolumeMonitor < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::VolumeMonitor*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::VolumeMonitor*)
    end

    def self.adopt_orphan_mount(mount)
      __return_value = LibGio.volume_monitor_adopt_orphan_mount(mount.to_unsafe.as(LibGio::Mount*))
      __return_value
    end

    def self.get
      __return_value = LibGio.volume_monitor_get
      Gio::VolumeMonitor.new(__return_value)
    end

    def connected_drives
      __return_value = LibGio.volume_monitor_get_connected_drives(@pointer.as(LibGio::VolumeMonitor*))
      GLib::ListIterator(Gio::Drive, LibGio::Drive*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def mount_for_uuid(uuid)
      __return_value = LibGio.volume_monitor_get_mount_for_uuid(@pointer.as(LibGio::VolumeMonitor*), uuid.to_unsafe)
      __return_value
    end

    def mounts
      __return_value = LibGio.volume_monitor_get_mounts(@pointer.as(LibGio::VolumeMonitor*))
      GLib::ListIterator(Gio::Mount, LibGio::Mount*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def volume_for_uuid(uuid)
      __return_value = LibGio.volume_monitor_get_volume_for_uuid(@pointer.as(LibGio::VolumeMonitor*), uuid.to_unsafe)
      __return_value
    end

    def volumes
      __return_value = LibGio.volume_monitor_get_volumes(@pointer.as(LibGio::VolumeMonitor*))
      GLib::ListIterator(Gio::Volume, LibGio::Volume*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    alias DriveChangedSignal = VolumeMonitor, Gio::Drive ->
    def on_drive_changed(&__block : DriveChangedSignal)
      __callback = ->(_arg0 : LibGio::VolumeMonitor*, _arg1 : LibGio::LibGio::Drive*) {
       __return_value = __block.call(VolumeMonitor.new(_arg0), _arg1)
       __return_value
      }
      connect("drive-changed", __callback)
    end

    alias DriveConnectedSignal = VolumeMonitor, Gio::Drive ->
    def on_drive_connected(&__block : DriveConnectedSignal)
      __callback = ->(_arg0 : LibGio::VolumeMonitor*, _arg1 : LibGio::LibGio::Drive*) {
       __return_value = __block.call(VolumeMonitor.new(_arg0), _arg1)
       __return_value
      }
      connect("drive-connected", __callback)
    end

    alias DriveDisconnectedSignal = VolumeMonitor, Gio::Drive ->
    def on_drive_disconnected(&__block : DriveDisconnectedSignal)
      __callback = ->(_arg0 : LibGio::VolumeMonitor*, _arg1 : LibGio::LibGio::Drive*) {
       __return_value = __block.call(VolumeMonitor.new(_arg0), _arg1)
       __return_value
      }
      connect("drive-disconnected", __callback)
    end

    alias DriveEjectButtonSignal = VolumeMonitor, Gio::Drive ->
    def on_drive_eject_button(&__block : DriveEjectButtonSignal)
      __callback = ->(_arg0 : LibGio::VolumeMonitor*, _arg1 : LibGio::LibGio::Drive*) {
       __return_value = __block.call(VolumeMonitor.new(_arg0), _arg1)
       __return_value
      }
      connect("drive-eject-button", __callback)
    end

    alias DriveStopButtonSignal = VolumeMonitor, Gio::Drive ->
    def on_drive_stop_button(&__block : DriveStopButtonSignal)
      __callback = ->(_arg0 : LibGio::VolumeMonitor*, _arg1 : LibGio::LibGio::Drive*) {
       __return_value = __block.call(VolumeMonitor.new(_arg0), _arg1)
       __return_value
      }
      connect("drive-stop-button", __callback)
    end

    alias MountAddedSignal = VolumeMonitor, Gio::Mount ->
    def on_mount_added(&__block : MountAddedSignal)
      __callback = ->(_arg0 : LibGio::VolumeMonitor*, _arg1 : LibGio::LibGio::Mount*) {
       __return_value = __block.call(VolumeMonitor.new(_arg0), _arg1)
       __return_value
      }
      connect("mount-added", __callback)
    end

    alias MountChangedSignal = VolumeMonitor, Gio::Mount ->
    def on_mount_changed(&__block : MountChangedSignal)
      __callback = ->(_arg0 : LibGio::VolumeMonitor*, _arg1 : LibGio::LibGio::Mount*) {
       __return_value = __block.call(VolumeMonitor.new(_arg0), _arg1)
       __return_value
      }
      connect("mount-changed", __callback)
    end

    alias MountPreUnmountSignal = VolumeMonitor, Gio::Mount ->
    def on_mount_pre_unmount(&__block : MountPreUnmountSignal)
      __callback = ->(_arg0 : LibGio::VolumeMonitor*, _arg1 : LibGio::LibGio::Mount*) {
       __return_value = __block.call(VolumeMonitor.new(_arg0), _arg1)
       __return_value
      }
      connect("mount-pre-unmount", __callback)
    end

    alias MountRemovedSignal = VolumeMonitor, Gio::Mount ->
    def on_mount_removed(&__block : MountRemovedSignal)
      __callback = ->(_arg0 : LibGio::VolumeMonitor*, _arg1 : LibGio::LibGio::Mount*) {
       __return_value = __block.call(VolumeMonitor.new(_arg0), _arg1)
       __return_value
      }
      connect("mount-removed", __callback)
    end

    alias VolumeAddedSignal = VolumeMonitor, Gio::Volume ->
    def on_volume_added(&__block : VolumeAddedSignal)
      __callback = ->(_arg0 : LibGio::VolumeMonitor*, _arg1 : LibGio::LibGio::Volume*) {
       __return_value = __block.call(VolumeMonitor.new(_arg0), _arg1)
       __return_value
      }
      connect("volume-added", __callback)
    end

    alias VolumeChangedSignal = VolumeMonitor, Gio::Volume ->
    def on_volume_changed(&__block : VolumeChangedSignal)
      __callback = ->(_arg0 : LibGio::VolumeMonitor*, _arg1 : LibGio::LibGio::Volume*) {
       __return_value = __block.call(VolumeMonitor.new(_arg0), _arg1)
       __return_value
      }
      connect("volume-changed", __callback)
    end

    alias VolumeRemovedSignal = VolumeMonitor, Gio::Volume ->
    def on_volume_removed(&__block : VolumeRemovedSignal)
      __callback = ->(_arg0 : LibGio::VolumeMonitor*, _arg1 : LibGio::LibGio::Volume*) {
       __return_value = __block.call(VolumeMonitor.new(_arg0), _arg1)
       __return_value
      }
      connect("volume-removed", __callback)
    end

  end
end

