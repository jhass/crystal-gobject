module Cairo
  class FontFace
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibCairo::FontFace*))
    end

    @cairo_font_face : LibCairo::FontFace*?
    def initialize(@cairo_font_face : LibCairo::FontFace*)
    end

    def to_unsafe
      @cairo_font_face.not_nil!.as(Void*)
    end

  end
end

