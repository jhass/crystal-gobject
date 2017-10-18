module GdkPixbuf
  class PixbufAnimation < GObject::Object
    @gdk_pixbuf_pixbuf_animation : LibGdkPixbuf::PixbufAnimation*?
    def initialize(@gdk_pixbuf_pixbuf_animation : LibGdkPixbuf::PixbufAnimation*)
    end

    def to_unsafe
      @gdk_pixbuf_pixbuf_animation.not_nil!
    end

    def self.new_from_file(filename) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_animation_new_from_file(filename.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      cast GdkPixbuf::PixbufAnimation.new(__return_value)
    end

    def self.new_from_resource(resource_path) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_animation_new_from_resource(resource_path.to_unsafe, pointerof(__error))
      GLib::Error.assert __error
      cast GdkPixbuf::PixbufAnimation.new(__return_value)
    end

    def self.new_from_stream(stream, cancellable) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_animation_new_from_stream(stream.to_unsafe.as(LibGio::InputStream*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      cast GdkPixbuf::PixbufAnimation.new(__return_value)
    end

    def self.new_from_stream_finish(async_result) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGdkPixbuf.pixbuf_animation_new_from_stream_finish(async_result.to_unsafe.as(LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      cast GdkPixbuf::PixbufAnimation.new(__return_value)
    end

    def self.new_from_stream_async(stream, cancellable, callback, user_data)
      LibGdkPixbuf.pixbuf_animation_new_from_stream_async(stream.to_unsafe.as(LibGio::InputStream*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def height
      __return_value = LibGdkPixbuf.pixbuf_animation_get_height(to_unsafe.as(LibGdkPixbuf::PixbufAnimation*))
      __return_value
    end

    def iter(start_time)
      __return_value = LibGdkPixbuf.pixbuf_animation_get_iter(to_unsafe.as(LibGdkPixbuf::PixbufAnimation*), start_time ? start_time.to_unsafe.as(LibGLib::TimeVal*) : nil)
      GdkPixbuf::PixbufAnimationIter.new(__return_value)
    end

    def static_image
      __return_value = LibGdkPixbuf.pixbuf_animation_get_static_image(to_unsafe.as(LibGdkPixbuf::PixbufAnimation*))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def width
      __return_value = LibGdkPixbuf.pixbuf_animation_get_width(to_unsafe.as(LibGdkPixbuf::PixbufAnimation*))
      __return_value
    end

    def static_image?
      __return_value = LibGdkPixbuf.pixbuf_animation_is_static_image(to_unsafe.as(LibGdkPixbuf::PixbufAnimation*))
      __return_value
    end

  end
end

