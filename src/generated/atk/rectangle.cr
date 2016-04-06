module Atk
  class Rectangle
    include GObject::WrappedType

    def initialize(@atk_rectangle)
    end

    def to_unsafe
      @atk_rectangle.not_nil!
    end

  end
end

