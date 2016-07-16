module Cairo
  class Context
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibCairo::Context*))
    end

    @cairo_context : LibCairo::Context*?
    def initialize(@cairo_context : LibCairo::Context*)
    end

    def to_unsafe
      @cairo_context.not_nil!.as(Void*)
    end

  end
end

