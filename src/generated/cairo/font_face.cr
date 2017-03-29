module Cairo
  class FontFace
    include GObject::WrappedType

    @cairo_font_face : LibCairo::FontFace*?
    def initialize(@cairo_font_face : LibCairo::FontFace*)
    end

    def to_unsafe
      @cairo_font_face.not_nil!
    end

  end
end

