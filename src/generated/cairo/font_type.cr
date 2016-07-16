module Cairo
  class FontType
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibCairo::FontType*))
    end

    @cairo_font_type : LibCairo::FontType*?
    def initialize(@cairo_font_type : LibCairo::FontType*)
    end

    def to_unsafe
      @cairo_font_type.not_nil!.as(Void*)
    end

  end
end

