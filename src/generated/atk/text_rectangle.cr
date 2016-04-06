module Atk
  class TextRectangle
    include GObject::WrappedType

    def initialize(@atk_text_rectangle)
    end

    def to_unsafe
      @atk_text_rectangle.not_nil!
    end

  end
end

