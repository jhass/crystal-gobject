module GdkPixbuf
  class PixbufAnimationIter < GObject::Object
    def initialize(@gdk_pixbuf_pixbuf_animation_iter)
    end

    def to_unsafe
      @gdk_pixbuf_pixbuf_animation_iter.not_nil!
    end

    def advance(current_time)
      __return_value = LibGdkPixbuf.pixbuf_animation_iter_advance((to_unsafe as LibGdkPixbuf::PixbufAnimationIter*), current_time && (current_time.to_unsafe as LibGLib::TimeVal*))
      __return_value
    end

    def delay_time
      __return_value = LibGdkPixbuf.pixbuf_animation_iter_get_delay_time((to_unsafe as LibGdkPixbuf::PixbufAnimationIter*))
      __return_value
    end

    def pixbuf
      __return_value = LibGdkPixbuf.pixbuf_animation_iter_get_pixbuf((to_unsafe as LibGdkPixbuf::PixbufAnimationIter*))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def on_currently_loading_frame
      __return_value = LibGdkPixbuf.pixbuf_animation_iter_on_currently_loading_frame((to_unsafe as LibGdkPixbuf::PixbufAnimationIter*))
      __return_value
    end

  end
end

