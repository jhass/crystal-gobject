module Cairo
  class FontOptions
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibCairo::FontOptions*))
    end

    @cairo_font_options : LibCairo::FontOptions*?
    def initialize(@cairo_font_options : LibCairo::FontOptions*)
    end

    def to_unsafe
      @cairo_font_options.not_nil!.as(Void*)
    end

  end
end

