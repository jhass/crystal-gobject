module Pango
  class GlyphGeometry
    include GObject::WrappedType

    def initialize(@pango_glyph_geometry)
    end

    def to_unsafe
      @pango_glyph_geometry.not_nil!
    end

  end
end

