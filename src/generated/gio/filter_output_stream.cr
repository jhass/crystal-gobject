require "./output_stream"

module Gio
  class FilterOutputStream < OutputStream
    @pointer : Void*
    def initialize(pointer : LibGio::FilterOutputStream*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::FilterOutputStream*)
    end

    def base_stream
      __return_value = LibGio.filter_output_stream_get_base_stream(to_unsafe.as(LibGio::FilterOutputStream*))
      Gio::OutputStream.new(__return_value)
    end

    def close_base_stream
      __return_value = LibGio.filter_output_stream_get_close_base_stream(to_unsafe.as(LibGio::FilterOutputStream*))
      __return_value
    end

    def base_stream
      __return_value = LibGio.filter_output_stream_get_base_stream(@pointer.as(LibGio::FilterOutputStream*))
      Gio::OutputStream.new(__return_value)
    end

    def close_base_stream
      __return_value = LibGio.filter_output_stream_get_close_base_stream(@pointer.as(LibGio::FilterOutputStream*))
      __return_value
    end

    def close_base_stream=(close_base)
      LibGio.filter_output_stream_set_close_base_stream(@pointer.as(LibGio::FilterOutputStream*), close_base)
      nil
    end

  end
end

