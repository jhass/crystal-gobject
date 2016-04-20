module Cairo
  class Surface
    include GObject::WrappedType

    @cairo_surface : Libcairo::Surface*?
    def initialize(@cairo_surface : Libcairo::Surface*)
    end

    def to_unsafe
      @cairo_surface.not_nil!
    end

  end
end

