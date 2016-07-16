module Cairo
  class Region
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibCairo::Region*))
    end

    @cairo_region : LibCairo::Region*?
    def initialize(@cairo_region : LibCairo::Region*)
    end

    def to_unsafe
      @cairo_region.not_nil!.as(Void*)
    end

  end
end

