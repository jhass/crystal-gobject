module Gio
  module AsyncInitable
    def self.newv_async(object_type, n_parameters, parameters, io_priority, cancellable, callback, user_data)
      __return_value = LibGio.async_initable_newv_async(UInt64.new(object_type), UInt32.new(n_parameters), parameters.to_unsafe.as(LibGObject::Parameter*), Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      __return_value
    end

    def init_async(io_priority, cancellable, callback, user_data)
      __return_value = LibGio.async_initable_init_async(to_unsafe.as(LibGio::AsyncInitable*), Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      __return_value
    end

    def init_finish(res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.async_initable_init_finish(to_unsafe.as(LibGio::AsyncInitable*), res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def new_finish(res)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.async_initable_new_finish(to_unsafe.as(LibGio::AsyncInitable*), res.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      GObject::Object.new(__return_value)
    end

  end
end

