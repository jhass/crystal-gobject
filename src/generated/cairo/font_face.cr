module Cairo
  class FontFace
    include GObject::WrappedType

    def initialize(@cairo_font_face)
    end

    def to_unsafe
      @cairo_font_face.not_nil!
    end

  end
end

