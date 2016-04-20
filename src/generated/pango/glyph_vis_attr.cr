module Pango
  class GlyphVisAttr
    include GObject::WrappedType

    @pango_glyph_vis_attr : LibPango::GlyphVisAttr*?
    def initialize(@pango_glyph_vis_attr : LibPango::GlyphVisAttr*)
    end

    def to_unsafe
      @pango_glyph_vis_attr.not_nil!
    end

  end
end

