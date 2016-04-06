module Atk
  class TextRange
    include GObject::WrappedType

    def initialize(@atk_text_range)
    end

    def to_unsafe
      @atk_text_range.not_nil!
    end

  end
end

