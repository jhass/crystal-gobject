module Pango
  class AttrFontFeatures
    include GObject::WrappedType

    def initialize(@pango_attr_font_features)
    end

    def to_unsafe
      @pango_attr_font_features.not_nil!
    end

  end
end

