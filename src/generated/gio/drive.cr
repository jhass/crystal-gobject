module Gio
  module Drive
    def can_eject
      __return_value = LibGio.drive_can_eject(@pointer.as(LibGio::Drive*))
      __return_value
    end

    def can_poll_for_media
      __return_value = LibGio.drive_can_poll_for_media(@pointer.as(LibGio::Drive*))
      __return_value
    end

    def can_start
      __return_value = LibGio.drive_can_start(@pointer.as(LibGio::Drive*))
      __return_value
    end

    def can_start_degraded
      __return_value = LibGio.drive_can_start_degraded(@pointer.as(LibGio::Drive*))
      __return_value
    end

    def can_stop
      __return_value = LibGio.drive_can_stop(@pointer.as(LibGio::Drive*))
      __return_value
    end

    def eject(flags : Gio::MountUnmountFlags, cancellable, callback, user_data)
      LibGio.drive_eject(@pointer.as(LibGio::Drive*), flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def eject_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.drive_eject_finish(@pointer.as(LibGio::Drive*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def eject_with_operation(flags : Gio::MountUnmountFlags, mount_operation, cancellable, callback, user_data)
      LibGio.drive_eject_with_operation(@pointer.as(LibGio::Drive*), flags, mount_operation ? mount_operation.to_unsafe.as(LibGio::MountOperation*) : nil, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def eject_with_operation_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.drive_eject_with_operation_finish(@pointer.as(LibGio::Drive*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def enumerate_identifiers
      __return_value = LibGio.drive_enumerate_identifiers(@pointer.as(LibGio::Drive*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def icon
      __return_value = LibGio.drive_get_icon(@pointer.as(LibGio::Drive*))
      __return_value
    end

    def identifier(kind)
      __return_value = LibGio.drive_get_identifier(@pointer.as(LibGio::Drive*), kind.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def name
      __return_value = LibGio.drive_get_name(@pointer.as(LibGio::Drive*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def sort_key
      __return_value = LibGio.drive_get_sort_key(@pointer.as(LibGio::Drive*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def start_stop_type
      __return_value = LibGio.drive_get_start_stop_type(@pointer.as(LibGio::Drive*))
      __return_value
    end

    def symbolic_icon
      __return_value = LibGio.drive_get_symbolic_icon(@pointer.as(LibGio::Drive*))
      __return_value
    end

    def volumes
      __return_value = LibGio.drive_get_volumes(@pointer.as(LibGio::Drive*))
      GLib::ListIterator(Gio::Volume, LibGio::Volume*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def has_media
      __return_value = LibGio.drive_has_media(@pointer.as(LibGio::Drive*))
      __return_value
    end

    def has_volumes
      __return_value = LibGio.drive_has_volumes(@pointer.as(LibGio::Drive*))
      __return_value
    end

    def media_check_automatic?
      __return_value = LibGio.drive_is_media_check_automatic(@pointer.as(LibGio::Drive*))
      __return_value
    end

    def media_removable?
      __return_value = LibGio.drive_is_media_removable(@pointer.as(LibGio::Drive*))
      __return_value
    end

    def removable?
      __return_value = LibGio.drive_is_removable(@pointer.as(LibGio::Drive*))
      __return_value
    end

    def poll_for_media(cancellable, callback, user_data)
      LibGio.drive_poll_for_media(@pointer.as(LibGio::Drive*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def poll_for_media_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.drive_poll_for_media_finish(@pointer.as(LibGio::Drive*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def start(flags : Gio::DriveStartFlags, mount_operation, cancellable, callback, user_data)
      LibGio.drive_start(@pointer.as(LibGio::Drive*), flags, mount_operation ? mount_operation.to_unsafe.as(LibGio::MountOperation*) : nil, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def start_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.drive_start_finish(@pointer.as(LibGio::Drive*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def stop(flags : Gio::MountUnmountFlags, mount_operation, cancellable, callback, user_data)
      LibGio.drive_stop(@pointer.as(LibGio::Drive*), flags, mount_operation ? mount_operation.to_unsafe.as(LibGio::MountOperation*) : nil, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def stop_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.drive_stop_finish(@pointer.as(LibGio::Drive*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    alias ChangedSignal = Drive ->
    def on_changed(&__block : ChangedSignal)
      __callback = ->(_arg0 : LibGio::Drive*) {
       __return_value = __block.call(Drive.new(_arg0))
       __return_value
      }
      connect("changed", __callback)
    end

    alias DisconnectedSignal = Drive ->
    def on_disconnected(&__block : DisconnectedSignal)
      __callback = ->(_arg0 : LibGio::Drive*) {
       __return_value = __block.call(Drive.new(_arg0))
       __return_value
      }
      connect("disconnected", __callback)
    end

    alias EjectButtonSignal = Drive ->
    def on_eject_button(&__block : EjectButtonSignal)
      __callback = ->(_arg0 : LibGio::Drive*) {
       __return_value = __block.call(Drive.new(_arg0))
       __return_value
      }
      connect("eject-button", __callback)
    end

    alias StopButtonSignal = Drive ->
    def on_stop_button(&__block : StopButtonSignal)
      __callback = ->(_arg0 : LibGio::Drive*) {
       __return_value = __block.call(Drive.new(_arg0))
       __return_value
      }
      connect("stop-button", __callback)
    end

  end
end

