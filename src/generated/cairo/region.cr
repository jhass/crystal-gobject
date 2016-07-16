module Cairo
  class Region
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(Libcairo::Region*))
    end

    @cairo_region : Libcairo::Region*?
    def initialize(@cairo_region : Libcairo::Region*)
    end

    def to_unsafe
      @cairo_region.not_nil!
    end

  end
end

