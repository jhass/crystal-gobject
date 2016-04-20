module Pango
  class AttrFontFeatures
    include GObject::WrappedType

    @pango_attr_font_features : LibPango::AttrFontFeatures*?
    def initialize(@pango_attr_font_features : LibPango::AttrFontFeatures*)
    end

    def to_unsafe
      @pango_attr_font_features.not_nil!
    end

  end
end

