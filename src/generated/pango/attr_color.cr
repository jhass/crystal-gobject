module Pango
  class AttrColor
    include GObject::WrappedType

    def initialize(@pango_attr_color)
    end

    def to_unsafe
      @pango_attr_color.not_nil!
    end

  end
end

