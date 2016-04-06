module Pango
  class AttrLanguage
    include GObject::WrappedType

    def initialize(@pango_attr_language)
    end

    def to_unsafe
      @pango_attr_language.not_nil!
    end

  end
end

