module Pango
  class GlyphItem
    include GObject::WrappedType

    def initialize(@pango_glyph_item)
    end

    def to_unsafe
      @pango_glyph_item.not_nil!
    end

    def apply_attrs(text, list)
      __return_value = LibPango.glyph_item_apply_attrs((to_unsafe as LibPango::GlyphItem*), text, (list.to_unsafe as LibPango::AttrList*))
      __return_value
    end

    def copy
      __return_value = LibPango.glyph_item_copy((to_unsafe as LibPango::GlyphItem*))
      Pango::GlyphItem.new(__return_value) if __return_value
    end

    def free
      __return_value = LibPango.glyph_item_free((to_unsafe as LibPango::GlyphItem*))
      __return_value
    end

    def logical_widths(text, logical_widths)
      __return_value = LibPango.glyph_item_get_logical_widths((to_unsafe as LibPango::GlyphItem*), text, logical_widths)
      __return_value
    end

    def letter_space(text, log_attrs, letter_spacing)
      __return_value = LibPango.glyph_item_letter_space((to_unsafe as LibPango::GlyphItem*), text, log_attrs, Int32.new(letter_spacing))
      __return_value
    end

    def split(text, split_index)
      __return_value = LibPango.glyph_item_split((to_unsafe as LibPango::GlyphItem*), text, Int32.new(split_index))
      Pango::GlyphItem.new(__return_value)
    end

  end
end

