module Pango
  class GlyphString
    include GObject::WrappedType

    def self.new(num_glyphs : Int32|Nil = nil, glyphs : Array(Pango::GlyphInfo)|Nil = nil, log_clusters : Int32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(32, 0u8)
      new(ptr.as(LibPango::GlyphString*)).tap do |object|
        object.num_glyphs = num_glyphs unless num_glyphs.nil?
        object.glyphs = glyphs unless glyphs.nil?
        object.log_clusters = log_clusters unless log_clusters.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibPango::GlyphString*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::GlyphString*)
    end

    def self.new : self
      __return_value = LibPango.glyph_string_new
      cast Pango::GlyphString.new(__return_value)
    end

    def copy
      __return_value = LibPango.glyph_string_copy(@pointer.as(LibPango::GlyphString*))
      Pango::GlyphString.new(__return_value) if __return_value
    end

    def extents(font, ink_rect, logical_rect)
      LibPango.glyph_string_extents(@pointer.as(LibPango::GlyphString*), font.to_unsafe.as(LibPango::Font*), ink_rect, logical_rect)
      nil
    end

    def extents_range(start, _end, font, ink_rect, logical_rect)
      LibPango.glyph_string_extents_range(@pointer.as(LibPango::GlyphString*), Int32.new(start), Int32.new(_end), font.to_unsafe.as(LibPango::Font*), ink_rect, logical_rect)
      nil
    end

    def free
      LibPango.glyph_string_free(@pointer.as(LibPango::GlyphString*))
      nil
    end

    def logical_widths(text, length, embedding_level, logical_widths)
      LibPango.glyph_string_get_logical_widths(@pointer.as(LibPango::GlyphString*), text.to_unsafe, Int32.new(length), Int32.new(embedding_level), logical_widths)
      nil
    end

    def width
      __return_value = LibPango.glyph_string_get_width(@pointer.as(LibPango::GlyphString*))
      __return_value
    end

    def index_to_x(text, length, analysis, index, trailing, x_pos)
      LibPango.glyph_string_index_to_x(@pointer.as(LibPango::GlyphString*), text.to_unsafe, Int32.new(length), analysis.to_unsafe.as(LibPango::Analysis*), Int32.new(index), trailing, x_pos)
      nil
    end

    def size=(new_len)
      LibPango.glyph_string_set_size(@pointer.as(LibPango::GlyphString*), Int32.new(new_len))
      nil
    end

    def x_to_index(text, length, analysis, x_pos, index, trailing)
      LibPango.glyph_string_x_to_index(@pointer.as(LibPango::GlyphString*), text.to_unsafe, Int32.new(length), analysis.to_unsafe.as(LibPango::Analysis*), Int32.new(x_pos), index, trailing)
      nil
    end

    def num_glyphs
      (to_unsafe.as(LibPango::GlyphString*).value.num_glyphs)
    end

    def num_glyphs=(value : Int32)
      to_unsafe.as(LibPango::GlyphString*).value.num_glyphs = Int32.new(value)
    end

    def glyphs
      PointerIterator.new((to_unsafe.as(LibPango::GlyphString*).value.glyphs)) {|__item| Pango::GlyphInfo.new(__item) }
    end

    def glyphs=(value : Array(Pango::GlyphInfo))
      to_unsafe.as(LibPango::GlyphString*).value.glyphs = value
    end

    def log_clusters
      (to_unsafe.as(LibPango::GlyphString*).value.log_clusters)
    end

    def log_clusters=(value : Int32)
      to_unsafe.as(LibPango::GlyphString*).value.log_clusters = value
    end

    def space
      (to_unsafe.as(LibPango::GlyphString*).value.space)
    end

  end
end

