module Atk
  class TextRange
    include GObject::WrappedType

    @atk_text_range : LibAtk::TextRange*?
    def initialize(@atk_text_range : LibAtk::TextRange*)
    end

    def to_unsafe
      @atk_text_range.not_nil!
    end

  end
end

