module Cairo
  class ScaledFont
    include GObject::WrappedType

    def initialize(@cairo_scaled_font)
    end

    def to_unsafe
      @cairo_scaled_font.not_nil!
    end

  end
end

