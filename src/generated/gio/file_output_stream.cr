require "./output_stream"

module Gio
  class FileOutputStream < OutputStream
    @pointer : Void*
    def initialize(pointer : LibGio::FileOutputStream*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::FileOutputStream*)
    end

    # Implements Seekable
    def etag
      __return_value = LibGio.file_output_stream_get_etag(@pointer.as(LibGio::FileOutputStream*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def query_info(attributes, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_output_stream_query_info(@pointer.as(LibGio::FileOutputStream*), attributes.to_unsafe, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      Gio::FileInfo.new(__return_value)
    end

    def query_info_async(attributes, io_priority, cancellable, callback, user_data)
      LibGio.file_output_stream_query_info_async(@pointer.as(LibGio::FileOutputStream*), attributes.to_unsafe, Int32.new(io_priority), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def query_info_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.file_output_stream_query_info_finish(@pointer.as(LibGio::FileOutputStream*), result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::FileInfo.new(__return_value)
    end

  end
end

