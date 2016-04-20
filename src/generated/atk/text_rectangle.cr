module Atk
  class TextRectangle
    include GObject::WrappedType

    @atk_text_rectangle : LibAtk::TextRectangle*?
    def initialize(@atk_text_rectangle : LibAtk::TextRectangle*)
    end

    def to_unsafe
      @atk_text_rectangle.not_nil!
    end

  end
end

