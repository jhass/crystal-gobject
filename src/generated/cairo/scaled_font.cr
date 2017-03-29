module Cairo
  class ScaledFont
    include GObject::WrappedType

    @cairo_scaled_font : LibCairo::ScaledFont*?
    def initialize(@cairo_scaled_font : LibCairo::ScaledFont*)
    end

    def to_unsafe
      @cairo_scaled_font.not_nil!
    end

  end
end

