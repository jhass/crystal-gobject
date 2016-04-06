module Gio
  class ZlibDecompressor < GObject::Object
    def initialize(@gio_zlib_decompressor)
    end

    def to_unsafe
      @gio_zlib_decompressor.not_nil!
    end

    # Implements Converter


    def self.new_internal(format)
      __return_value = LibGio.zlib_decompressor_new(format)
      Gio::ZlibDecompressor.new(__return_value)
    end

    def file_info
      __return_value = LibGio.zlib_decompressor_get_file_info((to_unsafe as LibGio::ZlibDecompressor*))
      Gio::FileInfo.new(__return_value)
    end

  end
end

