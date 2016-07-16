module Cairo
  class FontFace
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(Libcairo::FontFace*))
    end

    @cairo_font_face : Libcairo::FontFace*?
    def initialize(@cairo_font_face : Libcairo::FontFace*)
    end

    def to_unsafe
      @cairo_font_face.not_nil!
    end

  end
end

