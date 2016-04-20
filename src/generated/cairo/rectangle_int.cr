module Cairo
  class RectangleInt
    include GObject::WrappedType

    @cairo_rectangle_int : Libcairo::RectangleInt*?
    def initialize(@cairo_rectangle_int : Libcairo::RectangleInt*)
    end

    def to_unsafe
      @cairo_rectangle_int.not_nil!
    end

  end
end

