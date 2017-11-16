module GdkPixbuf
  class PixbufAnimationIter < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGdkPixbuf::PixbufAnimationIter*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGdkPixbuf::PixbufAnimationIter*)
    end

    def advance(current_time)
      __return_value = LibGdkPixbuf.pixbuf_animation_iter_advance(@pointer.as(LibGdkPixbuf::PixbufAnimationIter*), current_time ? current_time.to_unsafe.as(LibGLib::TimeVal*) : nil)
      __return_value
    end

    def delay_time
      __return_value = LibGdkPixbuf.pixbuf_animation_iter_get_delay_time(@pointer.as(LibGdkPixbuf::PixbufAnimationIter*))
      __return_value
    end

    def pixbuf
      __return_value = LibGdkPixbuf.pixbuf_animation_iter_get_pixbuf(@pointer.as(LibGdkPixbuf::PixbufAnimationIter*))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def on_currently_loading_frame
      __return_value = LibGdkPixbuf.pixbuf_animation_iter_on_currently_loading_frame(@pointer.as(LibGdkPixbuf::PixbufAnimationIter*))
      __return_value
    end

  end
end

