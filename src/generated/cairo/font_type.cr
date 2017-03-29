module Cairo
  class FontType
    include GObject::WrappedType

    @cairo_font_type : LibCairo::FontType*?
    def initialize(@cairo_font_type : LibCairo::FontType*)
    end

    def to_unsafe
      @cairo_font_type.not_nil!
    end

  end
end

