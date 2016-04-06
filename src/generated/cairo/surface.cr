module Cairo
  class Surface
    include GObject::WrappedType

    def initialize(@cairo_surface)
    end

    def to_unsafe
      @cairo_surface.not_nil!
    end

  end
end

