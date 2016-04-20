module Pango
  class GlyphGeometry
    include GObject::WrappedType

    @pango_glyph_geometry : LibPango::GlyphGeometry*?
    def initialize(@pango_glyph_geometry : LibPango::GlyphGeometry*)
    end

    def to_unsafe
      @pango_glyph_geometry.not_nil!
    end

  end
end

