module GdkPixbuf
  class PixbufLoader < GObject::Object
    def initialize(@gdk_pixbuf_pixbuf_loader)
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

    def set_size(width, height)
      __return_value = LibGdkPixbuf.pixbuf_loader_set_size((to_unsafe as LibGdkPixbuf::PixbufLoader*), Int32.new(width), Int32.new(height))
      __return_value
    end

    def write(buf, count)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_loader_write((to_unsafe as LibGdkPixbuf::PixbufLoader*), buf, UInt64.new(count), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def write_bytes(buffer)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_loader_write_bytes((to_unsafe as LibGdkPixbuf::PixbufLoader*), (buffer.to_unsafe as LibGLib::Bytes*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    alias AreaPreparedSignal = PixbufLoader -> 
    def on_area_prepared(&__block : AreaPreparedSignal)
      __callback = ->(_arg0 : LibGdkPixbuf::PixbufLoader*) {
       __return_value = __block.call(PixbufLoader.new(_arg0))
       __return_value
      }
      connect("area-prepared", __callback)
    end

    alias AreaUpdatedSignal = PixbufLoader, Int32, Int32, Int32, Int32 -> 
    def on_area_updated(&__block : AreaUpdatedSignal)
      __callback = ->(_arg0 : LibGdkPixbuf::PixbufLoader*, _arg1 : LibGdkPixbuf::Int32*, _arg2 : LibGdkPixbuf::Int32*, _arg3 : LibGdkPixbuf::Int32*, _arg4 : LibGdkPixbuf::Int32*) {
       __return_value = __block.call(PixbufLoader.new(_arg0), _arg1, _arg2, _arg3, _arg4)
       __return_value
      }
      connect("area-updated", __callback)
    end

    alias ClosedSignal = PixbufLoader -> 
    def on_closed(&__block : ClosedSignal)
      __callback = ->(_arg0 : LibGdkPixbuf::PixbufLoader*) {
       __return_value = __block.call(PixbufLoader.new(_arg0))
       __return_value
      }
      connect("closed", __callback)
    end

    alias SizePreparedSignal = PixbufLoader, Int32, Int32 -> 
    def on_size_prepared(&__block : SizePreparedSignal)
      __callback = ->(_arg0 : LibGdkPixbuf::PixbufLoader*, _arg1 : LibGdkPixbuf::Int32*, _arg2 : LibGdkPixbuf::Int32*) {
       __return_value = __block.call(PixbufLoader.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("size-prepared", __callback)
    end

  end
end

