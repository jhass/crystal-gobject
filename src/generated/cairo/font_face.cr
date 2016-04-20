module Cairo
  class FontFace
    include GObject::WrappedType

    @cairo_font_face : Libcairo::FontFace*?
    def initialize(@cairo_font_face : Libcairo::FontFace*)
    end

    def to_unsafe
      @cairo_font_face.not_nil!
    end

  end
end

