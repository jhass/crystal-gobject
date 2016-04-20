module Pango
  class AttrLanguage
    include GObject::WrappedType

    @pango_attr_language : LibPango::AttrLanguage*?
    def initialize(@pango_attr_language : LibPango::AttrLanguage*)
    end

    def to_unsafe
      @pango_attr_language.not_nil!
    end

  end
end

