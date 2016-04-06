require "./input_stream"

module Gio
  class FilterInputStream < InputStream
    def initialize(@gio_filter_input_stream)
    end

    def to_unsafe
      @gio_filter_input_stream.not_nil!
    end



    def base_stream
      __return_value = LibGio.filter_input_stream_get_base_stream((to_unsafe as LibGio::FilterInputStream*))
      Gio::InputStream.new(__return_value)
    end

    def close_base_stream
      __return_value = LibGio.filter_input_stream_get_close_base_stream((to_unsafe as LibGio::FilterInputStream*))
      __return_value
    end

    def close_base_stream=(close_base)
      __return_value = LibGio.filter_input_stream_set_close_base_stream((to_unsafe as LibGio::FilterInputStream*), close_base)
      __return_value
    end

  end
end

