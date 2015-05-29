module Gio
  module Mount
    def can_eject
      __return_value = LibGio.mount_can_eject((to_unsafe as LibGio::Mount*))
      __return_value
    end

    def can_unmount
      __return_value = LibGio.mount_can_unmount((to_unsafe as LibGio::Mount*))
      __return_value
    end

    def eject(flags, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.mount_eject((to_unsafe as LibGio::Mount*), flags, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def eject_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.mount_eject_finish((to_unsafe as LibGio::Mount*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def eject_with_operation(flags, mount_operation, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.mount_eject_with_operation((to_unsafe as LibGio::Mount*), flags, mount_operation && (mount_operation.to_unsafe as LibGio::MountOperation*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def eject_with_operation_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.mount_eject_with_operation_finish((to_unsafe as LibGio::Mount*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def default_location
      __return_value = LibGio.mount_get_default_location((to_unsafe as LibGio::Mount*))
      __return_value
    end

    def drive
      __return_value = LibGio.mount_get_drive((to_unsafe as LibGio::Mount*))
      __return_value
    end

    def icon
      __return_value = LibGio.mount_get_icon((to_unsafe as LibGio::Mount*))
      __return_value
    end

    def name
      __return_value = LibGio.mount_get_name((to_unsafe as LibGio::Mount*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def root
      __return_value = LibGio.mount_get_root((to_unsafe as LibGio::Mount*))
      __return_value
    end

    def sort_key
      __return_value = LibGio.mount_get_sort_key((to_unsafe as LibGio::Mount*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def symbolic_icon
      __return_value = LibGio.mount_get_symbolic_icon((to_unsafe as LibGio::Mount*))
      __return_value
    end

    def uuid
      __return_value = LibGio.mount_get_uuid((to_unsafe as LibGio::Mount*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def volume
      __return_value = LibGio.mount_get_volume((to_unsafe as LibGio::Mount*))
      __return_value
    end

    def guess_content_type(force_rescan, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.mount_guess_content_type((to_unsafe as LibGio::Mount*), Bool.cast(force_rescan), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def guess_content_type_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.mount_guess_content_type_finish((to_unsafe as LibGio::Mount*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      PointerIterator.new(__return_value) {|__item_97| raise "Expected string but got null" unless __item_97; String.new(__item_97) }
    end

    def guess_content_type_sync(force_rescan, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.mount_guess_content_type_sync((to_unsafe as LibGio::Mount*), Bool.cast(force_rescan), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      PointerIterator.new(__return_value) {|__item_21| raise "Expected string but got null" unless __item_21; String.new(__item_21) }
    end

    def is_shadowed
      __return_value = LibGio.mount_is_shadowed((to_unsafe as LibGio::Mount*))
      __return_value
    end

    def remount(flags, mount_operation, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.mount_remount((to_unsafe as LibGio::Mount*), flags, mount_operation && (mount_operation.to_unsafe as LibGio::MountOperation*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def remount_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.mount_remount_finish((to_unsafe as LibGio::Mount*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def shadow
      __return_value = LibGio.mount_shadow((to_unsafe as LibGio::Mount*))
      __return_value
    end

    def unmount(flags, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.mount_unmount((to_unsafe as LibGio::Mount*), flags, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def unmount_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.mount_unmount_finish((to_unsafe as LibGio::Mount*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def unmount_with_operation(flags, mount_operation, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.mount_unmount_with_operation((to_unsafe as LibGio::Mount*), flags, mount_operation && (mount_operation.to_unsafe as LibGio::MountOperation*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def unmount_with_operation_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.mount_unmount_with_operation_finish((to_unsafe as LibGio::Mount*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def unshadow
      __return_value = LibGio.mount_unshadow((to_unsafe as LibGio::Mount*))
      __return_value
    end

  end
end

