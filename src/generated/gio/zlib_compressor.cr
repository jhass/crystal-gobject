module Gio
  class ZlibCompressor < GObject::Object
    @gio_zlib_compressor : LibGio::ZlibCompressor*?
    def initialize(@gio_zlib_compressor : LibGio::ZlibCompressor*)
    end

    def to_unsafe
      @gio_zlib_compressor.not_nil!.as(Void*)
    end

    # Implements Converter



    def self.new(format : Gio::ZlibCompressorFormat, level) : self
      __return_value = LibGio.zlib_compressor_new(format, Int32.new(level))
      cast Gio::ZlibCompressor.new(__return_value)
    end

    def file_info
      __return_value = LibGio.zlib_compressor_get_file_info(to_unsafe.as(LibGio::ZlibCompressor*))
      Gio::FileInfo.new(__return_value)
    end

    def file_info=(file_info)
      __return_value = LibGio.zlib_compressor_set_file_info(to_unsafe.as(LibGio::ZlibCompressor*), file_info && file_info.to_unsafe.as(LibGio::FileInfo*))
      __return_value
    end

  end
end

