module Gio
  class ZlibDecompressor < GObject::Object
    @gio_zlib_decompressor : LibGio::ZlibDecompressor*?
    def initialize(@gio_zlib_decompressor : LibGio::ZlibDecompressor*)
    end

    def to_unsafe
      @gio_zlib_decompressor.not_nil!
    end

    # Implements Converter


    def self.new(format) : self
      __return_value = LibGio.zlib_decompressor_new(format)
      cast Gio::ZlibDecompressor.new(__return_value)
    end

    def file_info
      __return_value = LibGio.zlib_decompressor_get_file_info((to_unsafe as LibGio::ZlibDecompressor*))
      Gio::FileInfo.new(__return_value)
    end

  end
end

