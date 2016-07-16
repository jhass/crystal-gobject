module Cairo
  class Context
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(Libcairo::Context*))
    end

    @cairo_context : Libcairo::Context*?
    def initialize(@cairo_context : Libcairo::Context*)
    end

    def to_unsafe
      @cairo_context.not_nil!
    end

  end
end

