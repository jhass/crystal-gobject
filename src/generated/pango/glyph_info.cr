module Pango
  class GlyphInfo
    include GObject::WrappedType

    @pango_glyph_info : LibPango::GlyphInfo*?
    def initialize(@pango_glyph_info : LibPango::GlyphInfo*)
    end

    def to_unsafe
      @pango_glyph_info.not_nil!
    end

  end
end

