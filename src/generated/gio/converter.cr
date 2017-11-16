module Gio
  module Converter
    def convert(inbuf, inbuf_size, outbuf, outbuf_size, flags : Gio::ConverterFlags, bytes_read, bytes_written) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.converter_convert(@pointer.as(LibGio::Converter*), inbuf, UInt64.new(inbuf_size), outbuf, UInt64.new(outbuf_size), flags, bytes_read, bytes_written, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def reset
      LibGio.converter_reset(@pointer.as(LibGio::Converter*))
      nil
    end

  end
end

