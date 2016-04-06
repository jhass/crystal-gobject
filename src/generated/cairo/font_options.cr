module Cairo
  class FontOptions
    include GObject::WrappedType

    def initialize(@cairo_font_options)
    end

    def to_unsafe
      @cairo_font_options.not_nil!
    end

  end
end

