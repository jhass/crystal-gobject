module Cairo
  class Path
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibCairo::Path*))
    end

    @cairo_path : LibCairo::Path*?
    def initialize(@cairo_path : LibCairo::Path*)
    end

    def to_unsafe
      @cairo_path.not_nil!.as(Void*)
    end

  end
end

