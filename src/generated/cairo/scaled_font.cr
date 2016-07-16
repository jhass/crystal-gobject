module Cairo
  class ScaledFont
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibCairo::ScaledFont*))
    end

    @cairo_scaled_font : LibCairo::ScaledFont*?
    def initialize(@cairo_scaled_font : LibCairo::ScaledFont*)
    end

    def to_unsafe
      @cairo_scaled_font.not_nil!.as(Void*)
    end

  end
end

