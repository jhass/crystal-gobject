module Pango
  class Font < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibPango::Font*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::Font*)
    end

    def self.descriptions_free(descs, n_descs)
      LibPango.font_descriptions_free(descs ? descs : nil, Int32.new(n_descs))
      nil
    end

    def describe
      __return_value = LibPango.font_describe(@pointer.as(LibPango::Font*))
      Pango::FontDescription.new(__return_value)
    end

    def describe_with_absolute_size
      __return_value = LibPango.font_describe_with_absolute_size(@pointer.as(LibPango::Font*))
      Pango::FontDescription.new(__return_value)
    end

    def find_shaper(language, ch)
      __return_value = LibPango.font_find_shaper(@pointer.as(LibPango::Font*), language.to_unsafe.as(LibPango::Language*), UInt32.new(ch))
      Pango::EngineShape.new(__return_value)
    end

    def coverage(language)
      __return_value = LibPango.font_get_coverage(@pointer.as(LibPango::Font*), language.to_unsafe.as(LibPango::Language*))
      Pango::Coverage.new(__return_value)
    end

    def font_map
      __return_value = LibPango.font_get_font_map(@pointer.as(LibPango::Font*))
      Pango::FontMap.new(__return_value) if __return_value
    end

    def glyph_extents(glyph, ink_rect, logical_rect)
      LibPango.font_get_glyph_extents(@pointer.as(LibPango::Font*), UInt32.new(glyph), ink_rect, logical_rect)
      nil
    end

    def metrics(language)
      __return_value = LibPango.font_get_metrics(@pointer.as(LibPango::Font*), language ? language.to_unsafe.as(LibPango::Language*) : nil)
      Pango::FontMetrics.new(__return_value)
    end

    def has_char(wc)
      __return_value = LibPango.font_has_char(@pointer.as(LibPango::Font*), UInt8.new(wc))
      __return_value
    end

  end
end

