module Cairo
  class FontOptions
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(Libcairo::FontOptions*))
    end

    @cairo_font_options : Libcairo::FontOptions*?
    def initialize(@cairo_font_options : Libcairo::FontOptions*)
    end

    def to_unsafe
      @cairo_font_options.not_nil!
    end

  end
end

