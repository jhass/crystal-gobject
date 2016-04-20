module Pango
  class AttrColor
    include GObject::WrappedType

    @pango_attr_color : LibPango::AttrColor*?
    def initialize(@pango_attr_color : LibPango::AttrColor*)
    end

    def to_unsafe
      @pango_attr_color.not_nil!
    end

  end
end

