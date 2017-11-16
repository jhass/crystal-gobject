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
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "file_info", gvalue)
      Gio::FileInfo.cast(gvalue.object)
    end

    def format
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "format", gvalue)
      gvalue.enum
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

