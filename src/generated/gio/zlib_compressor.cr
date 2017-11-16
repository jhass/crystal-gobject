module Gio
  class ZlibCompressor < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::ZlibCompressor*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::ZlibCompressor*)
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

    def level
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "level", gvalue)
      gvalue
    end

    def self.new(format : Gio::ZlibCompressorFormat, level) : self
      __return_value = LibGio.zlib_compressor_new(format, Int32.new(level))
      cast Gio::ZlibCompressor.new(__return_value)
    end

    def file_info
      __return_value = LibGio.zlib_compressor_get_file_info(@pointer.as(LibGio::ZlibCompressor*))
      Gio::FileInfo.new(__return_value)
    end

    def file_info=(file_info)
      LibGio.zlib_compressor_set_file_info(@pointer.as(LibGio::ZlibCompressor*), file_info ? file_info.to_unsafe.as(LibGio::FileInfo*) : nil)
      nil
    end

  end
end

