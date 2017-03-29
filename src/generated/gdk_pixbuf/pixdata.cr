module GdkPixbuf
  class Pixdata
    include GObject::WrappedType

    def self.new(magic : UInt32|Nil = nil, length : Int32|Nil = nil, pixdata_type : UInt32|Nil = nil, rowstride : UInt32|Nil = nil, width : UInt32|Nil = nil, height : UInt32|Nil = nil, pixel_data : Array(UInt8)|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(32, 0u8)
      new(ptr.as(LibGdkPixbuf::Pixdata*)).tap do |object|
        object.magic = magic unless magic.nil?
        object.length = length unless length.nil?
        object.pixdata_type = pixdata_type unless pixdata_type.nil?
        object.rowstride = rowstride unless rowstride.nil?
        object.width = width unless width.nil?
        object.height = height unless height.nil?
        object.pixel_data = pixel_data unless pixel_data.nil?
      end
    end

    @gdk_pixbuf_pixdata : LibGdkPixbuf::Pixdata*?
    def initialize(@gdk_pixbuf_pixdata : LibGdkPixbuf::Pixdata*)
    end

    def to_unsafe
      @gdk_pixbuf_pixdata.not_nil!
    end

    def deserialize(stream_length, stream)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixdata_deserialize(to_unsafe.as(LibGdkPixbuf::Pixdata*), UInt32.new(stream_length), stream, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def serialize(stream_length_p)
      __return_value = LibGdkPixbuf.pixdata_serialize(to_unsafe.as(LibGdkPixbuf::Pixdata*), stream_length_p)
      PointerIterator.new(__return_value) {|__item| __item }
    end

    def to_csource(name, dump_type : GdkPixbuf::PixdataDumpType)
      __return_value = LibGdkPixbuf.pixdata_to_csource(to_unsafe.as(LibGdkPixbuf::Pixdata*), name, dump_type)
      GLib::String.new(__return_value)
    end

    def magic
      (to_unsafe.as(LibGdkPixbuf::Pixdata*).value.magic)
    end

    def magic=(value : UInt32)
      to_unsafe.as(LibGdkPixbuf::Pixdata*).value.magic = UInt32.new(value)
    end

    def length
      (to_unsafe.as(LibGdkPixbuf::Pixdata*).value.length)
    end

    def length=(value : Int32)
      to_unsafe.as(LibGdkPixbuf::Pixdata*).value.length = Int32.new(value)
    end

    def pixdata_type
      (to_unsafe.as(LibGdkPixbuf::Pixdata*).value.pixdata_type)
    end

    def pixdata_type=(value : UInt32)
      to_unsafe.as(LibGdkPixbuf::Pixdata*).value.pixdata_type = UInt32.new(value)
    end

    def rowstride
      (to_unsafe.as(LibGdkPixbuf::Pixdata*).value.rowstride)
    end

    def rowstride=(value : UInt32)
      to_unsafe.as(LibGdkPixbuf::Pixdata*).value.rowstride = UInt32.new(value)
    end

    def width
      (to_unsafe.as(LibGdkPixbuf::Pixdata*).value.width)
    end

    def width=(value : UInt32)
      to_unsafe.as(LibGdkPixbuf::Pixdata*).value.width = UInt32.new(value)
    end

    def height
      (to_unsafe.as(LibGdkPixbuf::Pixdata*).value.height)
    end

    def height=(value : UInt32)
      to_unsafe.as(LibGdkPixbuf::Pixdata*).value.height = UInt32.new(value)
    end

    def pixel_data
      PointerIterator.new((to_unsafe.as(LibGdkPixbuf::Pixdata*).value.pixel_data)) {|__item| __item }
    end

    def pixel_data=(value : Array(UInt8))
      to_unsafe.as(LibGdkPixbuf::Pixdata*).value.pixel_data = value
    end

  end
end

