module Cairo
  class Region
    include GObject::WrappedType

    @cairo_region : LibCairo::Region*?
    def initialize(@cairo_region : LibCairo::Region*)
    end

    def to_unsafe
      @cairo_region.not_nil!
    end

  end
end

