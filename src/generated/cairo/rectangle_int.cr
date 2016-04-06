module Cairo
  class RectangleInt
    include GObject::WrappedType

    def initialize(@cairo_rectangle_int)
    end

    def to_unsafe
      @cairo_rectangle_int.not_nil!
    end

  end
end

