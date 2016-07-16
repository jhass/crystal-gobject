module Pango
  class GlyphItem
    include GObject::WrappedType

    def self.new(item : Pango::Item|Nil = nil, glyphs : Pango::GlyphString|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      new(ptr.as(LibPango::GlyphItem*)).tap do |object|
        object.item = item unless item.nil?
        object.glyphs = glyphs unless glyphs.nil?
      end
    end

    @pango_glyph_item : LibPango::GlyphItem*?
    def initialize(@pango_glyph_item : LibPango::GlyphItem*)
    end

    def to_unsafe
      @pango_glyph_item.not_nil!.as(Void*)
    end

    def apply_attrs(text, list)
      __return_value = LibPango.glyph_item_apply_attrs(to_unsafe.as(LibPango::GlyphItem*), text.to_unsafe, list.to_unsafe.as(LibPango::AttrList*))
      __return_value
    end

    def copy
      __return_value = LibPango.glyph_item_copy(to_unsafe.as(LibPango::GlyphItem*))
      Pango::GlyphItem.new(__return_value) if __return_value
    end

    def free
      __return_value = LibPango.glyph_item_free(to_unsafe.as(LibPango::GlyphItem*))
      __return_value
    end

    def logical_widths(text, logical_widths)
      __return_value = LibPango.glyph_item_get_logical_widths(to_unsafe.as(LibPango::GlyphItem*), text.to_unsafe, logical_widths)
      __return_value
    end

    def letter_space(text, log_attrs, letter_spacing)
      __return_value = LibPango.glyph_item_letter_space(to_unsafe.as(LibPango::GlyphItem*), text.to_unsafe, log_attrs, Int32.new(letter_spacing))
      __return_value
    end

    def split(text, split_index)
      __return_value = LibPango.glyph_item_split(to_unsafe.as(LibPango::GlyphItem*), text.to_unsafe, Int32.new(split_index))
      Pango::GlyphItem.new(__return_value)
    end

    def item
      Pango::Item.new((to_unsafe.value.item))
    end

    def item=(value : Pango::Item)
      to_unsafe.value.item = value.to_unsafe.as(LibPango::Item*)
    end

    def glyphs
      Pango::GlyphString.new((to_unsafe.value.glyphs))
    end

    def glyphs=(value : Pango::GlyphString)
      to_unsafe.value.glyphs = value.to_unsafe.as(LibPango::GlyphString*)
    end

  end
end

