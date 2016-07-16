module Cairo
  class Path
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(Libcairo::Path*))
    end

    @cairo_path : Libcairo::Path*?
    def initialize(@cairo_path : Libcairo::Path*)
    end

    def to_unsafe
      @cairo_path.not_nil!
    end

  end
end

