module Pango
  class GlyphItemIter
    include GObject::WrappedType

    def initialize(@pango_glyph_item_iter)
    end

    def to_unsafe
      @pango_glyph_item_iter.not_nil!
    end

    def copy
      __return_value = LibPango.glyph_item_iter_copy((to_unsafe as LibPango::GlyphItemIter*))
      Pango::GlyphItemIter.new(__return_value) if __return_value
    end

    def free
      __return_value = LibPango.glyph_item_iter_free((to_unsafe as LibPango::GlyphItemIter*))
      __return_value
    end

    def init_end(glyph_item, text)
      __return_value = LibPango.glyph_item_iter_init_end((to_unsafe as LibPango::GlyphItemIter*), (glyph_item.to_unsafe as LibPango::GlyphItem*), text)
      __return_value
    end

    def init_start(glyph_item, text)
      __return_value = LibPango.glyph_item_iter_init_start((to_unsafe as LibPango::GlyphItemIter*), (glyph_item.to_unsafe as LibPango::GlyphItem*), text)
      __return_value
    end

    def next_cluster
      __return_value = LibPango.glyph_item_iter_next_cluster((to_unsafe as LibPango::GlyphItemIter*))
      __return_value
    end

    def prev_cluster
      __return_value = LibPango.glyph_item_iter_prev_cluster((to_unsafe as LibPango::GlyphItemIter*))
      __return_value
    end

  end
end

