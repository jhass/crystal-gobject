module Gio
  class ZlibCompressor < GObject::Object
    @gio_zlib_compressor : LibGio::ZlibCompressor*?
    def initialize(@gio_zlib_compressor : LibGio::ZlibCompressor*)
    end

    def to_unsafe
      @gio_zlib_compressor.not_nil!
    end

    # Implements Converter
    def file_info
      __return_value = LibGio.zlib_compressor_get_file_info(to_unsafe.as(LibGio::ZlibCompressor*))
      Gio::FileInfo.new(__return_value)
    end

    def format
      __return_value = LibGio.zlib_compressor_get_format(to_unsafe.as(LibGio::ZlibCompressor*))
      __return_value
    end

    def level
      __return_value = LibGio.zlib_compressor_get_level(to_unsafe.as(LibGio::ZlibCompressor*))
      __return_value
    end

    def self.new(format : Gio::ZlibCompressorFormat, level) : self
      __return_value = LibGio.zlib_compressor_new(format, Int32.new(level))
      cast Gio::ZlibCompressor.new(__return_value)
    end

    def file_info
      __return_value = LibGio.zlib_compressor_get_file_info(to_unsafe.as(LibGio::ZlibCompressor*))
      Gio::FileInfo.new(__return_value)
    end

    def file_info=(file_info)
      LibGio.zlib_compressor_set_file_info(to_unsafe.as(LibGio::ZlibCompressor*), file_info ? file_info.to_unsafe.as(LibGio::FileInfo*) : nil)
      nil
    end

  end
end

