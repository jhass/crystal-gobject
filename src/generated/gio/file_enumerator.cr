module Gio
  class FileEnumerator < GObject::Object
    @gio_file_enumerator : LibGio::FileEnumerator*?
    def initialize(@gio_file_enumerator : LibGio::FileEnumerator*)
    end

    def to_unsafe
      @gio_file_enumerator.not_nil!.as(Void*)
    end


    def close(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_enumerator_close(to_unsafe.as(LibGio::FileEnumerator*), cancellable && cancellable.to_unsafe.as(LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def close_async(io_priority, cancellable, callback, user_data)
      __return_value = LibGio.file_enumerator_close_async(to_unsafe.as(LibGio::FileEnumerator*), Int32.new(io_priority), cancellable && cancellable.to_unsafe.as(LibGio::Cancellable*), callback && callback, user_data && user_data)
      __return_value
    end

    def close_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_enumerator_close_finish(to_unsafe.as(LibGio::FileEnumerator*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def child(info)
      __return_value = LibGio.file_enumerator_get_child(to_unsafe.as(LibGio::FileEnumerator*), info.to_unsafe.as(LibGio::FileInfo*))
      __return_value
    end

    def container
      __return_value = LibGio.file_enumerator_get_container(to_unsafe.as(LibGio::FileEnumerator*))
      __return_value
    end

    def has_pending
      __return_value = LibGio.file_enumerator_has_pending(to_unsafe.as(LibGio::FileEnumerator*))
      __return_value
    end

    def closed?
      __return_value = LibGio.file_enumerator_is_closed(to_unsafe.as(LibGio::FileEnumerator*))
      __return_value
    end

    def iterate(out_info, out_child, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_enumerator_iterate(to_unsafe.as(LibGio::FileEnumerator*), out_info, out_child, cancellable && cancellable.to_unsafe.as(LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def next_file(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_enumerator_next_file(to_unsafe.as(LibGio::FileEnumerator*), cancellable && cancellable.to_unsafe.as(LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      Gio::FileInfo.new(__return_value) if __return_value
    end

    def next_files_async(num_files, io_priority, cancellable, callback, user_data)
      __return_value = LibGio.file_enumerator_next_files_async(to_unsafe.as(LibGio::FileEnumerator*), Int32.new(num_files), Int32.new(io_priority), cancellable && cancellable.to_unsafe.as(LibGio::Cancellable*), callback && callback, user_data && user_data)
      __return_value
    end

    def next_files_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_enumerator_next_files_finish(to_unsafe.as(LibGio::FileEnumerator*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      GLib::ListIterator(Gio::FileInfo, LibGio::FileInfo*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def pending=(pending)
      __return_value = LibGio.file_enumerator_set_pending(to_unsafe.as(LibGio::FileEnumerator*), pending)
      __return_value
    end

  end
end

