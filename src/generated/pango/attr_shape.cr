module Pango
  class AttrShape
    include GObject::WrappedType

    @pango_attr_shape : LibPango::AttrShape*?
    def initialize(@pango_attr_shape : LibPango::AttrShape*)
    end

    def to_unsafe
      @pango_attr_shape.not_nil!
    end

  end
end

