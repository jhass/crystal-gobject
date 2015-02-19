module GdkPixbuf
  class PixbufLoader < GObject::Object
    def initialize @gdk_pixbuf_pixbuf_loader
    end

    def to_unsafe
      @gdk_pixbuf_pixbuf_loader.not_nil!
    end

    def self.new_internal
      __return_value = LibGdkPixbuf.pixbuf_loader_new
      GdkPixbuf::PixbufLoader.new(__return_value)
    end

    def self.new_with_mime_type(mime_type)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_loader_new_with_mime_type(mime_type, pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::PixbufLoader.new(__return_value)
    end

    def self.new_with_type(image_type)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_loader_new_with_type(image_type, pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::PixbufLoader.new(__return_value)
    end

    def close
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_loader_close((to_unsafe as LibGdkPixbuf::PixbufLoader*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def animation
      __return_value = LibGdkPixbuf.pixbuf_loader_get_animation((to_unsafe as LibGdkPixbuf::PixbufLoader*))
      GdkPixbuf::PixbufAnimation.new(__return_value)
    end

    def format
      __return_value = LibGdkPixbuf.pixbuf_loader_get_format((to_unsafe as LibGdkPixbuf::PixbufLoader*))
      GdkPixbuf::PixbufFormat.new(__return_value) if __return_value
    end

    def pixbuf
      __return_value = LibGdkPixbuf.pixbuf_loader_get_pixbuf((to_unsafe as LibGdkPixbuf::PixbufLoader*))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def size=(width, height)
      __return_value = LibGdkPixbuf.pixbuf_loader_set_size((to_unsafe as LibGdkPixbuf::PixbufLoader*), Int32.cast(width), Int32.cast(height))
      __return_value
    end

    def write(buf, count)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_loader_write((to_unsafe as LibGdkPixbuf::PixbufLoader*), buf, UInt64.cast(count), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def write_bytes(buffer)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_loader_write_bytes((to_unsafe as LibGdkPixbuf::PixbufLoader*), (buffer.to_unsafe as LibGLib::Bytes*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

  end
end

