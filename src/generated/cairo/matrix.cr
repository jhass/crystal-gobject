module Cairo
  class Matrix
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(Libcairo::Matrix*))
    end

    @cairo_matrix : Libcairo::Matrix*?
    def initialize(@cairo_matrix : Libcairo::Matrix*)
    end

    def to_unsafe
      @cairo_matrix.not_nil!
    end

  end
end

