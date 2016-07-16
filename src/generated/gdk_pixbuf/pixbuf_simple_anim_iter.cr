require "./pixbuf_animation_iter"

module GdkPixbuf
  class PixbufSimpleAnimIter < PixbufAnimationIter
    @gdk_pixbuf_pixbuf_simple_anim_iter : LibGdkPixbuf::PixbufSimpleAnimIter*?
    def initialize(@gdk_pixbuf_pixbuf_simple_anim_iter : LibGdkPixbuf::PixbufSimpleAnimIter*)
    end

    def to_unsafe
      @gdk_pixbuf_pixbuf_simple_anim_iter.not_nil!.as(Void*)
    end

  end
end

