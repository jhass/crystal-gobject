module GdkPixbuf
  class PixbufAnimation < GObject::Object
    def initialize @gdk_pixbuf_pixbuf_animation
    end

    def to_unsafe
      @gdk_pixbuf_pixbuf_animation.not_nil!
    end

    def self.new_from_file(filename)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_animation_new_from_file(filename, pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::PixbufAnimation.new(__return_value)
    end

    def self.new_from_resource(resource_path)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_animation_new_from_resource(resource_path, pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::PixbufAnimation.new(__return_value)
    end

    def self.new_from_stream(stream, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_animation_new_from_stream((stream.to_unsafe as LibGio::InputStream*), (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::PixbufAnimation.new(__return_value)
    end

    def self.new_from_stream_finish(async_result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_animation_new_from_stream_finish((async_result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      GdkPixbuf::PixbufAnimation.new(__return_value)
    end

    def self.new_from_stream_async(stream, cancellable, callback, user_data)
      __return_value = LibGdkPixbuf.pixbuf_animation_new_from_stream_async((stream.to_unsafe as LibGio::InputStream*), (cancellable.to_unsafe as LibGio::Cancellable*), callback, user_data)
      __return_value
    end

    def height
      __return_value = LibGdkPixbuf.pixbuf_animation_get_height((to_unsafe as LibGdkPixbuf::PixbufAnimation*))
      __return_value
    end

    def iter(start_time)
      __return_value = LibGdkPixbuf.pixbuf_animation_get_iter((to_unsafe as LibGdkPixbuf::PixbufAnimation*), (start_time.to_unsafe as LibGLib::TimeVal*))
      GdkPixbuf::PixbufAnimationIter.new(__return_value)
    end

    def static_image
      __return_value = LibGdkPixbuf.pixbuf_animation_get_static_image((to_unsafe as LibGdkPixbuf::PixbufAnimation*))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def width
      __return_value = LibGdkPixbuf.pixbuf_animation_get_width((to_unsafe as LibGdkPixbuf::PixbufAnimation*))
      __return_value
    end

    def is_static_image
      __return_value = LibGdkPixbuf.pixbuf_animation_is_static_image((to_unsafe as LibGdkPixbuf::PixbufAnimation*))
      __return_value
    end

  end
end

