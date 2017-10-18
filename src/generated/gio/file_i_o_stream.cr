require "./i_o_stream"

module Gio
  class FileIOStream < IOStream
    @gio_file_i_o_stream : LibGio::FileIOStream*?
    def initialize(@gio_file_i_o_stream : LibGio::FileIOStream*)
    end

    def to_unsafe
      @gio_file_i_o_stream.not_nil!
    end

    # Implements Seekable
    def etag
      __return_value = LibGio.file_i_o_stream_get_etag(to_unsafe.as(LibGio::FileIOStream*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def query_info(attributes, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_i_o_stream_query_info(to_unsafe.as(LibGio::FileIOStream*), attributes.to_unsafe, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      Gio::FileInfo.new(__return_value)
    end

    def query_info_async(attributes, io_priority, cancellable, callback, user_data)
      LibGio.file_i_o_stream_query_info_async(to_unsafe.as(LibGio::FileIOStream*), attributes.to_unsafe, Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def query_info_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_i_o_stream_query_info_finish(to_unsafe.as(LibGio::FileIOStream*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::FileInfo.new(__return_value)
    end

  end
end

