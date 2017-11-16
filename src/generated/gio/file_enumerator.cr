module Gio
  class FileEnumerator < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::FileEnumerator*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::FileEnumerator*)
    end


    def close(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_enumerator_close(@pointer.as(LibGio::FileEnumerator*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def close_async(io_priority, cancellable, callback, user_data)
      LibGio.file_enumerator_close_async(@pointer.as(LibGio::FileEnumerator*), Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def close_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_enumerator_close_finish(@pointer.as(LibGio::FileEnumerator*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def child(info)
      __return_value = LibGio.file_enumerator_get_child(@pointer.as(LibGio::FileEnumerator*), info.to_unsafe.as(LibGio::FileInfo*))
      __return_value
    end

    def container
      __return_value = LibGio.file_enumerator_get_container(@pointer.as(LibGio::FileEnumerator*))
      __return_value
    end

    def has_pending
      __return_value = LibGio.file_enumerator_has_pending(@pointer.as(LibGio::FileEnumerator*))
      __return_value
    end

    def closed?
      __return_value = LibGio.file_enumerator_is_closed(@pointer.as(LibGio::FileEnumerator*))
      __return_value
    end

    def iterate(out_info, out_child, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_enumerator_iterate(@pointer.as(LibGio::FileEnumerator*), out_info, out_child, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def next_file(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_enumerator_next_file(@pointer.as(LibGio::FileEnumerator*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      Gio::FileInfo.new(__return_value) if __return_value
    end

    def next_files_async(num_files, io_priority, cancellable, callback, user_data)
      LibGio.file_enumerator_next_files_async(@pointer.as(LibGio::FileEnumerator*), Int32.new(num_files), Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def next_files_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_enumerator_next_files_finish(@pointer.as(LibGio::FileEnumerator*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      GLib::ListIterator(Gio::FileInfo, LibGio::FileInfo*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    def pending=(pending)
      LibGio.file_enumerator_set_pending(@pointer.as(LibGio::FileEnumerator*), pending)
      nil
    end

  end
end

