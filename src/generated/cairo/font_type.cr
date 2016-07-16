module Cairo
  class FontType
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(Libcairo::FontType*))
    end

    @cairo_font_type : Libcairo::FontType*?
    def initialize(@cairo_font_type : Libcairo::FontType*)
    end

    def to_unsafe
      @cairo_font_type.not_nil!
    end

  end
end

