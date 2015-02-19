module Gio
  module LoadableIcon
    def load(size, type, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.loadable_icon_load((to_unsafe as LibGio::LoadableIcon*), Int32.cast(size), type, (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      Gio::InputStream.new(__return_value)
    end

    def load_async(size, cancellable, callback, user_data)
      __return_value = LibGio.loadable_icon_load_async((to_unsafe as LibGio::LoadableIcon*), Int32.cast(size), (cancellable.to_unsafe as LibGio::Cancellable*), callback, user_data)
      __return_value
    end

    def load_finish(res, type)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.loadable_icon_load_finish((to_unsafe as LibGio::LoadableIcon*), (res.to_unsafe as LibGio::AsyncResult*), type, pointerof(__error))
      GLib::Error.assert __error
      Gio::InputStream.new(__return_value)
    end

  end
end

