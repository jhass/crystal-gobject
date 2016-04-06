module Pango
  class GlyphInfo
    include GObject::WrappedType

    def initialize(@pango_glyph_info)
    end

    def to_unsafe
      @pango_glyph_info.not_nil!
    end

  end
end

