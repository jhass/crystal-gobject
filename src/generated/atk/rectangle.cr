module Atk
  class Rectangle
    include GObject::WrappedType

    @atk_rectangle : LibAtk::Rectangle*?
    def initialize(@atk_rectangle : LibAtk::Rectangle*)
    end

    def to_unsafe
      @atk_rectangle.not_nil!
    end

  end
end

