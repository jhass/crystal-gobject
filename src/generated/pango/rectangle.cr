module Pango
  class Rectangle
    include GObject::WrappedType

    @pango_rectangle : LibPango::Rectangle*?
    def initialize(@pango_rectangle : LibPango::Rectangle*)
    end

    def to_unsafe
      @pango_rectangle.not_nil!
    end

  end
end

