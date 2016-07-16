module Cairo
  class Pattern
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibCairo::Pattern*))
    end

    @cairo_pattern : LibCairo::Pattern*?
    def initialize(@cairo_pattern : LibCairo::Pattern*)
    end

    def to_unsafe
      @cairo_pattern.not_nil!.as(Void*)
    end

  end
end

