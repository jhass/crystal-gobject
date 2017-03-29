module Cairo
  class FontOptions
    include GObject::WrappedType

    @cairo_font_options : LibCairo::FontOptions*?
    def initialize(@cairo_font_options : LibCairo::FontOptions*)
    end

    def to_unsafe
      @cairo_font_options.not_nil!
    end

  end
end

