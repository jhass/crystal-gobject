module Gio
  module Seekable
    def can_seek
      __return_value = LibGio.seekable_can_seek(@pointer.as(LibGio::Seekable*))
      __return_value
    end

    def can_truncate
      __return_value = LibGio.seekable_can_truncate(@pointer.as(LibGio::Seekable*))
      __return_value
    end

    def seek(offset, type : GLib::SeekType, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.seekable_seek(@pointer.as(LibGio::Seekable*), Int64.new(offset), type, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def tell
      __return_value = LibGio.seekable_tell(@pointer.as(LibGio::Seekable*))
      __return_value
    end

    def truncate(offset, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.seekable_truncate(@pointer.as(LibGio::Seekable*), Int64.new(offset), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

  end
end

