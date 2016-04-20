module Cairo
  class Matrix
    include GObject::WrappedType

    @cairo_matrix : Libcairo::Matrix*?
    def initialize(@cairo_matrix : Libcairo::Matrix*)
    end

    def to_unsafe
      @cairo_matrix.not_nil!
    end

  end
end

