module Cairo
  class FontOptions
    include GObject::WrappedType

    @cairo_font_options : Libcairo::FontOptions*?
    def initialize(@cairo_font_options : Libcairo::FontOptions*)
    end

    def to_unsafe
      @cairo_font_options.not_nil!
    end

  end
end

