module Cairo
  class Region
    include GObject::WrappedType

    def initialize(@cairo_region)
    end

    def to_unsafe
      @cairo_region.not_nil!
    end

  end
end

