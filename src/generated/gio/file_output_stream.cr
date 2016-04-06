require "./output_stream"

module Gio
  class FileOutputStream < OutputStream
    def initialize(@gio_file_output_stream)
    end

    def to_unsafe
      @gio_file_output_stream.not_nil!
    end

    # Implements Seekable
    def etag
      __return_value = LibGio.file_output_stream_get_etag((to_unsafe as LibGio::FileOutputStream*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def query_info(attributes, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_output_stream_query_info((to_unsafe as LibGio::FileOutputStream*), attributes, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      Gio::FileInfo.new(__return_value)
    end

    def query_info_async(attributes, io_priority, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.file_output_stream_query_info_async((to_unsafe as LibGio::FileOutputStream*), attributes, Int32.new(io_priority), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def query_info_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_output_stream_query_info_finish((to_unsafe as LibGio::FileOutputStream*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::FileInfo.new(__return_value)
    end

  end
end

