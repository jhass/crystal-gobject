require "./output_stream"

module Gio
  class FilterOutputStream < OutputStream
    def initialize(@gio_filter_output_stream)
    end

    def to_unsafe
      @gio_filter_output_stream.not_nil!
    end



    def base_stream
      __return_value = LibGio.filter_output_stream_get_base_stream((to_unsafe as LibGio::FilterOutputStream*))
      Gio::OutputStream.new(__return_value)
    end

    def close_base_stream
      __return_value = LibGio.filter_output_stream_get_close_base_stream((to_unsafe as LibGio::FilterOutputStream*))
      __return_value
    end

    def close_base_stream=(close_base)
      __return_value = LibGio.filter_output_stream_set_close_base_stream((to_unsafe as LibGio::FilterOutputStream*), close_base)
      __return_value
    end

  end
end

