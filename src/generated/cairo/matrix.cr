module Cairo
  class Matrix
    include GObject::WrappedType

    def initialize(@cairo_matrix)
    end

    def to_unsafe
      @cairo_matrix.not_nil!
    end

  end
end

