module Gio
  module LoadableIcon
    def load(size, type, cancellable) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.loadable_icon_load(@pointer.as(LibGio::LoadableIcon*), Int32.new(size), type, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      Gio::InputStream.new(__return_value)
    end

    def load_async(size, cancellable, callback, user_data)
      LibGio.loadable_icon_load_async(@pointer.as(LibGio::LoadableIcon*), Int32.new(size), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def load_finish(res, type) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.loadable_icon_load_finish(@pointer.as(LibGio::LoadableIcon*), res.to_unsafe.as(LibGio::AsyncResult*), type, pointerof(__error))
      GLib::Error.assert __error
      Gio::InputStream.new(__return_value)
    end

  end
end

