require "./pixbuf_animation_iter"

module GdkPixbuf
  class PixbufSimpleAnimIter < PixbufAnimationIter
    def initialize(@gdk_pixbuf_pixbuf_simple_anim_iter)
    end

    def to_unsafe
      @gdk_pixbuf_pixbuf_simple_anim_iter.not_nil!
    end

  end
end

