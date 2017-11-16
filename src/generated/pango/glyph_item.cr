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

    @pointer : Void*
    def initialize(pointer : LibPango::GlyphItem*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::GlyphItem*)
    end

    def apply_attrs(text, list)
      __return_value = LibPango.glyph_item_apply_attrs(@pointer.as(LibPango::GlyphItem*), text.to_unsafe, list.to_unsafe.as(LibPango::AttrList*))
      GLib::SListIterator(Pango::GlyphItem, LibPango::GlyphItem*).new(GLib::SList.new(__return_value.as(LibGLib::SList*)))
    end

    def copy
      __return_value = LibPango.glyph_item_copy(@pointer.as(LibPango::GlyphItem*))
      Pango::GlyphItem.new(__return_value) if __return_value
    end

    def free
      LibPango.glyph_item_free(@pointer.as(LibPango::GlyphItem*))
      nil
    end

    def logical_widths(text, logical_widths)
      LibPango.glyph_item_get_logical_widths(@pointer.as(LibPango::GlyphItem*), text.to_unsafe, logical_widths)
      nil
    end

    def letter_space(text, log_attrs, letter_spacing)
      LibPango.glyph_item_letter_space(@pointer.as(LibPango::GlyphItem*), text.to_unsafe, log_attrs, Int32.new(letter_spacing))
      nil
    end

    def split(text, split_index)
      __return_value = LibPango.glyph_item_split(@pointer.as(LibPango::GlyphItem*), text.to_unsafe, Int32.new(split_index))
      Pango::GlyphItem.new(__return_value)
    end

    def item
      Pango::Item.new((to_unsafe.as(LibPango::GlyphItem*).value.item))
    end

    def item=(value : Pango::Item)
      to_unsafe.as(LibPango::GlyphItem*).value.item = value.to_unsafe.as(LibPango::Item*)
    end

    def glyphs
      Pango::GlyphString.new((to_unsafe.as(LibPango::GlyphItem*).value.glyphs))
    end

    def glyphs=(value : Pango::GlyphString)
      to_unsafe.as(LibPango::GlyphItem*).value.glyphs = value.to_unsafe.as(LibPango::GlyphString*)
    end

  end
end

