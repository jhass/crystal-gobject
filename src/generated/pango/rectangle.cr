module Pango
  class Rectangle
    include GObject::WrappedType

    def initialize(@pango_rectangle)
    end

    def to_unsafe
      @pango_rectangle.not_nil!
    end

  end
end

