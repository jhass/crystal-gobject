module Pango
  class AttrShape
    include GObject::WrappedType

    def initialize(@pango_attr_shape)
    end

    def to_unsafe
      @pango_attr_shape.not_nil!
    end

  end
end

