module Gio
  class ZlibCompressor < GObject::Object
    def initialize(@gio_zlib_compressor)
    end

    def to_unsafe
      @gio_zlib_compressor.not_nil!
    end

    # Implements Converter



    def self.new_internal(format, level)
      __return_value = LibGio.zlib_compressor_new(format, Int32.new(level))
      Gio::ZlibCompressor.new(__return_value)
    end

    def file_info
      __return_value = LibGio.zlib_compressor_get_file_info((to_unsafe as LibGio::ZlibCompressor*))
      Gio::FileInfo.new(__return_value)
    end

    def file_info=(file_info)
      __return_value = LibGio.zlib_compressor_set_file_info((to_unsafe as LibGio::ZlibCompressor*), file_info && (file_info.to_unsafe as LibGio::FileInfo*))
      __return_value
    end

  end
end

