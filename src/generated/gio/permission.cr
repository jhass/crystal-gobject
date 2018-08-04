module Gio
  class Permission < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::Permission*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::Permission*)
    end

    def allowed
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "allowed", gvalue)
      gvalue.boolean
    end

    def can_acquire
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "can_acquire", gvalue)
      gvalue.boolean
    end

    def can_release
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "can_release", gvalue)
      gvalue.boolean
    end

    def acquire(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.permission_acquire(@pointer.as(LibGio::Permission*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def acquire_async(cancellable, callback, user_data)
      LibGio.permission_acquire_async(@pointer.as(LibGio::Permission*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def acquire_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.permission_acquire_finish(@pointer.as(LibGio::Permission*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def allowed
      __return_value = LibGio.permission_get_allowed(@pointer.as(LibGio::Permission*))
      __return_value
    end

    def can_acquire
      __return_value = LibGio.permission_get_can_acquire(@pointer.as(LibGio::Permission*))
      __return_value
    end

    def can_release
      __return_value = LibGio.permission_get_can_release(@pointer.as(LibGio::Permission*))
      __return_value
    end

    def impl_update(allowed, can_acquire, can_release)
      LibGio.permission_impl_update(@pointer.as(LibGio::Permission*), allowed, can_acquire, can_release)
      nil
    end

    def release(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.permission_release(@pointer.as(LibGio::Permission*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def release_async(cancellable, callback, user_data)
      LibGio.permission_release_async(@pointer.as(LibGio::Permission*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def release_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.permission_release_finish(@pointer.as(LibGio::Permission*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

  end
end

