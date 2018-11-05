module Gio
  module Volume
    def can_eject
      __return_value = LibGio.volume_can_eject(@pointer.as(LibGio::Volume*))
      __return_value
    end

    def can_mount
      __return_value = LibGio.volume_can_mount(@pointer.as(LibGio::Volume*))
      __return_value
    end

    def eject(flags : Gio::MountUnmountFlags, cancellable, callback, user_data)
      LibGio.volume_eject(@pointer.as(LibGio::Volume*), flags, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def eject_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.volume_eject_finish(@pointer.as(LibGio::Volume*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def eject_with_operation(flags : Gio::MountUnmountFlags, mount_operation, cancellable, callback, user_data)
      LibGio.volume_eject_with_operation(@pointer.as(LibGio::Volume*), flags, mount_operation ? mount_operation.to_unsafe.as(LibGio::MountOperation*) : nil, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def eject_with_operation_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.volume_eject_with_operation_finish(@pointer.as(LibGio::Volume*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def enumerate_identifiers
      __return_value = LibGio.volume_enumerate_identifiers(@pointer.as(LibGio::Volume*))
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def activation_root
      __return_value = LibGio.volume_get_activation_root(@pointer.as(LibGio::Volume*))
      __return_value if __return_value
    end

    def drive
      __return_value = LibGio.volume_get_drive(@pointer.as(LibGio::Volume*))
      __return_value if __return_value
    end

    def icon
      __return_value = LibGio.volume_get_icon(@pointer.as(LibGio::Volume*))
      __return_value
    end

    def identifier(kind)
      __return_value = LibGio.volume_get_identifier(@pointer.as(LibGio::Volume*), kind.to_unsafe)
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def mount
      __return_value = LibGio.volume_get_mount(@pointer.as(LibGio::Volume*))
      __return_value if __return_value
    end

    def name
      __return_value = LibGio.volume_get_name(@pointer.as(LibGio::Volume*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def sort_key
      __return_value = LibGio.volume_get_sort_key(@pointer.as(LibGio::Volume*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def symbolic_icon
      __return_value = LibGio.volume_get_symbolic_icon(@pointer.as(LibGio::Volume*))
      __return_value
    end

    def uuid
      __return_value = LibGio.volume_get_uuid(@pointer.as(LibGio::Volume*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def mount(flags : Gio::MountMountFlags, mount_operation, cancellable, callback, user_data)
      LibGio.volume_mount(@pointer.as(LibGio::Volume*), flags, mount_operation ? mount_operation.to_unsafe.as(LibGio::MountOperation*) : nil, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def mount_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.volume_mount_finish(@pointer.as(LibGio::Volume*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def should_automount
      __return_value = LibGio.volume_should_automount(@pointer.as(LibGio::Volume*))
      __return_value
    end

    alias ChangedSignal = Volume ->
    def on_changed(&__block : ChangedSignal)
      __callback = ->(_arg0 : LibGio::Volume*) {
       __return_value = __block.call(Volume.new(_arg0))
       __return_value
      }
      connect("changed", __callback)
    end

    alias RemovedSignal = Volume ->
    def on_removed(&__block : RemovedSignal)
      __callback = ->(_arg0 : LibGio::Volume*) {
       __return_value = __block.call(Volume.new(_arg0))
       __return_value
      }
      connect("removed", __callback)
    end

  end
end

