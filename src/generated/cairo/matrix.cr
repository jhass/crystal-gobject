module Cairo
  class Matrix
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibCairo::Matrix*))
    end

    @cairo_matrix : LibCairo::Matrix*?
    def initialize(@cairo_matrix : LibCairo::Matrix*)
    end

    def to_unsafe
      @cairo_matrix.not_nil!.as(Void*)
    end

  end
end

