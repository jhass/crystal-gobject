module Cairo
  class Matrix
    include GObject::WrappedType

    @cairo_matrix : LibCairo::Matrix*?
    def initialize(@cairo_matrix : LibCairo::Matrix*)
    end

    def to_unsafe
      @cairo_matrix.not_nil!
    end

  end
end

