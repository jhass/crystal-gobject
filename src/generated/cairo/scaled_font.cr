module Cairo
  class ScaledFont
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(Libcairo::ScaledFont*))
    end

    @cairo_scaled_font : Libcairo::ScaledFont*?
    def initialize(@cairo_scaled_font : Libcairo::ScaledFont*)
    end

    def to_unsafe
      @cairo_scaled_font.not_nil!
    end

  end
end

