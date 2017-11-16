require "./input_stream"

module Gio
  class FilterInputStream < InputStream
    @pointer : Void*
    def initialize(pointer : LibGio::FilterInputStream*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::FilterInputStream*)
    end

    def base_stream
      __return_value = LibGio.filter_input_stream_get_base_stream(to_unsafe.as(LibGio::FilterInputStream*))
      Gio::InputStream.new(__return_value)
    end

    def close_base_stream
      __return_value = LibGio.filter_input_stream_get_close_base_stream(to_unsafe.as(LibGio::FilterInputStream*))
      __return_value
    end

    def base_stream
      __return_value = LibGio.filter_input_stream_get_base_stream(@pointer.as(LibGio::FilterInputStream*))
      Gio::InputStream.new(__return_value)
    end

    def close_base_stream
      __return_value = LibGio.filter_input_stream_get_close_base_stream(@pointer.as(LibGio::FilterInputStream*))
      __return_value
    end

    def close_base_stream=(close_base)
      LibGio.filter_input_stream_set_close_base_stream(@pointer.as(LibGio::FilterInputStream*), close_base)
      nil
    end

  end
end

