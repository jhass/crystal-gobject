module Pango
  class Font < GObject::Object
    def initialize(@pango_font)
    end

    def to_unsafe
      @pango_font.not_nil!
    end

    def self.descriptions_free(descs, n_descs)
      __return_value = LibPango.font_descriptions_free(descs && descs, Int32.new(n_descs))
      __return_value
    end

    def describe
      __return_value = LibPango.font_describe((to_unsafe as LibPango::Font*))
      Pango::FontDescription.new(__return_value)
    end

    def describe_with_absolute_size
      __return_value = LibPango.font_describe_with_absolute_size((to_unsafe as LibPango::Font*))
      Pango::FontDescription.new(__return_value)
    end

    def font_map
      __return_value = LibPango.font_get_font_map((to_unsafe as LibPango::Font*))
      Pango::FontMap.new(__return_value) if __return_value
    end

    def glyph_extents(glyph, ink_rect, logical_rect)
      __return_value = LibPango.font_get_glyph_extents((to_unsafe as LibPango::Font*), UInt32.new(glyph), ink_rect, logical_rect)
      __return_value
    end

    def metrics(language)
      __return_value = LibPango.font_get_metrics((to_unsafe as LibPango::Font*), language && (language.to_unsafe as LibPango::Language*))
      Pango::FontMetrics.new(__return_value)
    end

  end
end

