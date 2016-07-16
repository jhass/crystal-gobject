module Cairo
  class Pattern
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(Libcairo::Pattern*))
    end

    @cairo_pattern : Libcairo::Pattern*?
    def initialize(@cairo_pattern : Libcairo::Pattern*)
    end

    def to_unsafe
      @cairo_pattern.not_nil!
    end

  end
end

