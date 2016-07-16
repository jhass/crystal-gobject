module Cairo
  class Surface
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibCairo::Surface*))
    end

    @cairo_surface : LibCairo::Surface*?
    def initialize(@cairo_surface : LibCairo::Surface*)
    end

    def to_unsafe
      @cairo_surface.not_nil!.as(Void*)
    end

  end
end

