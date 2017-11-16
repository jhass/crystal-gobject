require "./pixbuf_animation_iter"

module GdkPixbuf
  class PixbufSimpleAnimIter < PixbufAnimationIter
    @pointer : Void*
    def initialize(pointer : LibGdkPixbuf::PixbufSimpleAnimIter*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGdkPixbuf::PixbufSimpleAnimIter*)
    end

  end
end

