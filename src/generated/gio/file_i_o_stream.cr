require "./i_o_stream"

module Gio
  class FileIOStream < IOStream
    def initialize(@gio_file_i_o_stream)
    end

    def to_unsafe
      @gio_file_i_o_stream.not_nil!
    end

    # Implements Seekable
    def etag
      __return_value = LibGio.file_i_o_stream_get_etag((to_unsafe as LibGio::FileIOStream*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def query_info(attributes, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_i_o_stream_query_info((to_unsafe as LibGio::FileIOStream*), attributes, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      Gio::FileInfo.new(__return_value)
    end

    def query_info_async(attributes, io_priority, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.file_i_o_stream_query_info_async((to_unsafe as LibGio::FileIOStream*), attributes, Int32.new(io_priority), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def query_info_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_i_o_stream_query_info_finish((to_unsafe as LibGio::FileIOStream*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::FileInfo.new(__return_value)
    end

  end
end

