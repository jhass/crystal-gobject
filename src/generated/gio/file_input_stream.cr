require "./input_stream"

module Gio
  class FileInputStream < InputStream
    @pointer : Void*
    def initialize(pointer : LibGio::FileInputStream*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::FileInputStream*)
    end

    # Implements Seekable
    def query_info(attributes, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_input_stream_query_info(@pointer.as(LibGio::FileInputStream*), attributes.to_unsafe, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      Gio::FileInfo.new(__return_value)
    end

    def query_info_async(attributes, io_priority, cancellable, callback, user_data)
      LibGio.file_input_stream_query_info_async(@pointer.as(LibGio::FileInputStream*), attributes.to_unsafe, Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def query_info_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_input_stream_query_info_finish(@pointer.as(LibGio::FileInputStream*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::FileInfo.new(__return_value)
    end

  end
end

