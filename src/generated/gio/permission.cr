module Gio
  class Permission < GObject::Object
    def initialize(@gio_permission)
    end

    def to_unsafe
      @gio_permission.not_nil!
    end




    def acquire(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.permission_acquire((to_unsafe as LibGio::Permission*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def acquire_async(cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.permission_acquire_async((to_unsafe as LibGio::Permission*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def acquire_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.permission_acquire_finish((to_unsafe as LibGio::Permission*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def allowed
      __return_value = LibGio.permission_get_allowed((to_unsafe as LibGio::Permission*))
      __return_value
    end

    def can_acquire
      __return_value = LibGio.permission_get_can_acquire((to_unsafe as LibGio::Permission*))
      __return_value
    end

    def can_release
      __return_value = LibGio.permission_get_can_release((to_unsafe as LibGio::Permission*))
      __return_value
    end

    def impl_update(allowed, can_acquire, can_release)
      __return_value = LibGio.permission_impl_update((to_unsafe as LibGio::Permission*), allowed, can_acquire, can_release)
      __return_value
    end

    def release(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.permission_release((to_unsafe as LibGio::Permission*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def release_async(cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.permission_release_async((to_unsafe as LibGio::Permission*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def release_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.permission_release_finish((to_unsafe as LibGio::Permission*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

  end
end

