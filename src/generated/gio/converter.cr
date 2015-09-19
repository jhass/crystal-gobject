module Gio
  module Converter
    def convert(inbuf, inbuf_size, outbuf, outbuf_size, flags, bytes_read, bytes_written)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.converter_convert((to_unsafe as LibGio::Converter*), inbuf, UInt64.new(inbuf_size), outbuf, UInt64.new(outbuf_size), flags, UInt64.new(bytes_read), UInt64.new(bytes_written), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def reset
      __return_value = LibGio.converter_reset((to_unsafe as LibGio::Converter*))
      __return_value
    end

  end
end

