module Gio
  class ZlibDecompressor < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::ZlibDecompressor*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::ZlibDecompressor*)
    end

    # Implements Converter
    def file_info
      __return_value = LibGio.zlib_decompressor_get_file_info(to_unsafe.as(LibGio::ZlibDecompressor*))
      Gio::FileInfo.new(__return_value)
    end

    def format
      __return_value = LibGio.zlib_decompressor_get_format(to_unsafe.as(LibGio::ZlibDecompressor*))
      __return_value
    end

    def self.new(format : Gio::ZlibCompressorFormat) : self
      __return_value = LibGio.zlib_decompressor_new(format)
      cast Gio::ZlibDecompressor.new(__return_value)
    end

    def file_info
      __return_value = LibGio.zlib_decompressor_get_file_info(@pointer.as(LibGio::ZlibDecompressor*))
      Gio::FileInfo.new(__return_value)
    end

  end
end

