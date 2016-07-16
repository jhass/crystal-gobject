module Cairo
  class Surface
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(Libcairo::Surface*))
    end

    @cairo_surface : Libcairo::Surface*?
    def initialize(@cairo_surface : Libcairo::Surface*)
    end

    def to_unsafe
      @cairo_surface.not_nil!
    end

  end
end

