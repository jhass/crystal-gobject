module Cairo
  class FontType
    include GObject::WrappedType

    def initialize(@cairo_font_type)
    end

    def to_unsafe
      @cairo_font_type.not_nil!
    end

  end
end

