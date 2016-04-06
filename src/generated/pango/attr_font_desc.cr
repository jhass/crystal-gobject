module Pango
  class AttrFontDesc
    include GObject::WrappedType

    def initialize(@pango_attr_font_desc)
    end

    def to_unsafe
      @pango_attr_font_desc.not_nil!
    end

  end
end

