module Gio
  module Mount
    def can_eject
      __return_value = LibGio.mount_can_eject(@pointer.as(LibGio::Mount*))
      __return_value
    end

    def can_unmount
      __return_value = LibGio.mount_can_unmount(@pointer.as(LibGio::Mount*))
      __return_value
    end

    def eject(flags : Gio::MountUnmountFlags, cancellable, callback, user_data)
      LibGio.mount_eject(@pointer.as(LibGio::Mount*), flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def eject_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.mount_eject_finish(@pointer.as(LibGio::Mount*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def eject_with_operation(flags : Gio::MountUnmountFlags, mount_operation, cancellable, callback, user_data)
      LibGio.mount_eject_with_operation(@pointer.as(LibGio::Mount*), flags, mount_operation ? mount_operation.to_unsafe.as(LibGio::MountOperation*) : nil, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def eject_with_operation_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.mount_eject_with_operation_finish(@pointer.as(LibGio::Mount*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def default_location
      __return_value = LibGio.mount_get_default_location(@pointer.as(LibGio::Mount*))
      __return_value
    end

    def drive
      __return_value = LibGio.mount_get_drive(@pointer.as(LibGio::Mount*))
      __return_value if __return_value
    end

    def icon
      __return_value = LibGio.mount_get_icon(@pointer.as(LibGio::Mount*))
      __return_value
    end

    def name
      __return_value = LibGio.mount_get_name(@pointer.as(LibGio::Mount*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def root
      __return_value = LibGio.mount_get_root(@pointer.as(LibGio::Mount*))
      __return_value
    end

    def sort_key
      __return_value = LibGio.mount_get_sort_key(@pointer.as(LibGio::Mount*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def symbolic_icon
      __return_value = LibGio.mount_get_symbolic_icon(@pointer.as(LibGio::Mount*))
      __return_value
    end

    def uuid
      __return_value = LibGio.mount_get_uuid(@pointer.as(LibGio::Mount*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def volume
      __return_value = LibGio.mount_get_volume(@pointer.as(LibGio::Mount*))
      __return_value if __return_value
    end

    def guess_content_type(force_rescan, cancellable, callback, user_data)
      LibGio.mount_guess_content_type(@pointer.as(LibGio::Mount*), force_rescan, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def guess_content_type_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.mount_guess_content_type_finish(@pointer.as(LibGio::Mount*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def guess_content_type_sync(force_rescan, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.mount_guess_content_type_sync(@pointer.as(LibGio::Mount*), force_rescan, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def shadowed?
      __return_value = LibGio.mount_is_shadowed(@pointer.as(LibGio::Mount*))
      __return_value
    end

    def remount(flags : Gio::MountMountFlags, mount_operation, cancellable, callback, user_data)
      LibGio.mount_remount(@pointer.as(LibGio::Mount*), flags, mount_operation ? mount_operation.to_unsafe.as(LibGio::MountOperation*) : nil, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def remount_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.mount_remount_finish(@pointer.as(LibGio::Mount*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def shadow
      LibGio.mount_shadow(@pointer.as(LibGio::Mount*))
      nil
    end

    def unmount(flags : Gio::MountUnmountFlags, cancellable, callback, user_data)
      LibGio.mount_unmount(@pointer.as(LibGio::Mount*), flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def unmount_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.mount_unmount_finish(@pointer.as(LibGio::Mount*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def unmount_with_operation(flags : Gio::MountUnmountFlags, mount_operation, cancellable, callback, user_data)
      LibGio.mount_unmount_with_operation(@pointer.as(LibGio::Mount*), flags, mount_operation ? mount_operation.to_unsafe.as(LibGio::MountOperation*) : nil, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def unmount_with_operation_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.mount_unmount_with_operation_finish(@pointer.as(LibGio::Mount*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def unshadow
      LibGio.mount_unshadow(@pointer.as(LibGio::Mount*))
      nil
    end

    alias ChangedSignal = Mount ->
    def on_changed(&__block : ChangedSignal)
      __callback = ->(_arg0 : LibGio::Mount*) {
       __return_value = __block.call(Mount.new(_arg0))
       __return_value
      }
      connect("changed", __callback)
    end

    alias PreUnmountSignal = Mount ->
    def on_pre_unmount(&__block : PreUnmountSignal)
      __callback = ->(_arg0 : LibGio::Mount*) {
       __return_value = __block.call(Mount.new(_arg0))
       __return_value
      }
      connect("pre-unmount", __callback)
    end

    alias UnmountedSignal = Mount ->
    def on_unmounted(&__block : UnmountedSignal)
      __callback = ->(_arg0 : LibGio::Mount*) {
       __return_value = __block.call(Mount.new(_arg0))
       __return_value
      }
      connect("unmounted", __callback)
    end

  end
end

