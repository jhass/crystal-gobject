module Gio
  module Drive
    def can_eject
      __return_value = LibGio.drive_can_eject((to_unsafe as LibGio::Drive*))
      __return_value
    end

    def can_poll_for_media
      __return_value = LibGio.drive_can_poll_for_media((to_unsafe as LibGio::Drive*))
      __return_value
    end

    def can_start
      __return_value = LibGio.drive_can_start((to_unsafe as LibGio::Drive*))
      __return_value
    end

    def can_start_degraded
      __return_value = LibGio.drive_can_start_degraded((to_unsafe as LibGio::Drive*))
      __return_value
    end

    def can_stop
      __return_value = LibGio.drive_can_stop((to_unsafe as LibGio::Drive*))
      __return_value
    end

    def eject(flags, cancellable, callback, user_data)
      __return_value = LibGio.drive_eject((to_unsafe as LibGio::Drive*), flags, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def eject_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.drive_eject_finish((to_unsafe as LibGio::Drive*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def eject_with_operation(flags, mount_operation, cancellable, callback, user_data)
      __return_value = LibGio.drive_eject_with_operation((to_unsafe as LibGio::Drive*), flags, mount_operation && (mount_operation.to_unsafe as LibGio::MountOperation*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def eject_with_operation_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.drive_eject_with_operation_finish((to_unsafe as LibGio::Drive*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def enumerate_identifiers
      __return_value = LibGio.drive_enumerate_identifiers((to_unsafe as LibGio::Drive*))
      PointerIterator.new(__return_value) {|__item_60| raise "Expected string but got null" unless __item_60; String.new(__item_60) }
    end

    def icon
      __return_value = LibGio.drive_get_icon((to_unsafe as LibGio::Drive*))
      __return_value
    end

    def identifier(kind)
      __return_value = LibGio.drive_get_identifier((to_unsafe as LibGio::Drive*), kind)
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def name
      __return_value = LibGio.drive_get_name((to_unsafe as LibGio::Drive*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def sort_key
      __return_value = LibGio.drive_get_sort_key((to_unsafe as LibGio::Drive*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def start_stop_type
      __return_value = LibGio.drive_get_start_stop_type((to_unsafe as LibGio::Drive*))
      __return_value
    end

    def symbolic_icon
      __return_value = LibGio.drive_get_symbolic_icon((to_unsafe as LibGio::Drive*))
      __return_value
    end

    def volumes
      __return_value = LibGio.drive_get_volumes((to_unsafe as LibGio::Drive*))
      __return_value
    end

    def has_media
      __return_value = LibGio.drive_has_media((to_unsafe as LibGio::Drive*))
      __return_value
    end

    def has_volumes
      __return_value = LibGio.drive_has_volumes((to_unsafe as LibGio::Drive*))
      __return_value
    end

    def is_media_check_automatic
      __return_value = LibGio.drive_is_media_check_automatic((to_unsafe as LibGio::Drive*))
      __return_value
    end

    def is_media_removable
      __return_value = LibGio.drive_is_media_removable((to_unsafe as LibGio::Drive*))
      __return_value
    end

    def poll_for_media(cancellable, callback, user_data)
      __return_value = LibGio.drive_poll_for_media((to_unsafe as LibGio::Drive*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def poll_for_media_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.drive_poll_for_media_finish((to_unsafe as LibGio::Drive*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def start(flags, mount_operation, cancellable, callback, user_data)
      __return_value = LibGio.drive_start((to_unsafe as LibGio::Drive*), flags, mount_operation && (mount_operation.to_unsafe as LibGio::MountOperation*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def start_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.drive_start_finish((to_unsafe as LibGio::Drive*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def stop(flags, mount_operation, cancellable, callback, user_data)
      __return_value = LibGio.drive_stop((to_unsafe as LibGio::Drive*), flags, mount_operation && (mount_operation.to_unsafe as LibGio::MountOperation*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def stop_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.drive_stop_finish((to_unsafe as LibGio::Drive*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

  end
end

