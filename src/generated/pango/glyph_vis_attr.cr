module Pango
  class GlyphVisAttr
    include GObject::WrappedType

    def initialize(@pango_glyph_vis_attr)
    end

    def to_unsafe
      @pango_glyph_vis_attr.not_nil!
    end

  end
end

