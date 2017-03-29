module Cairo
  class Surface
    include GObject::WrappedType

    @cairo_surface : LibCairo::Surface*?
    def initialize(@cairo_surface : LibCairo::Surface*)
    end

    def to_unsafe
      @cairo_surface.not_nil!
    end

  end
end

