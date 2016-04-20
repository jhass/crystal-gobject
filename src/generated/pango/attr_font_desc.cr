module Pango
  class AttrFontDesc
    include GObject::WrappedType

    @pango_attr_font_desc : LibPango::AttrFontDesc*?
    def initialize(@pango_attr_font_desc : LibPango::AttrFontDesc*)
    end

    def to_unsafe
      @pango_attr_font_desc.not_nil!
    end

  end
end

