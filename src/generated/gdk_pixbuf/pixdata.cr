module GdkPixbuf
  class Pixdata
    include GObject::WrappedType

    def initialize @gdk_pixbuf_pixdata
    end

    def to_unsafe
      @gdk_pixbuf_pixdata.not_nil!
    end

    def deserialize(stream_length, stream)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixdata_deserialize((to_unsafe as LibGdkPixbuf::Pixdata*), UInt32.cast(stream_length), stream, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def serialize(stream_length_p)
      __return_value = LibGdkPixbuf.pixdata_serialize((to_unsafe as LibGdkPixbuf::Pixdata*), UInt32.cast(stream_length_p))
      PointerIterator.new(__return_value) {|__item_85| __item_85 }
    end

    def to_csource(name, dump_type)
      __return_value = LibGdkPixbuf.pixdata_to_csource((to_unsafe as LibGdkPixbuf::Pixdata*), name, dump_type)
      GLib::String.new(__return_value)
    end

  end
end

