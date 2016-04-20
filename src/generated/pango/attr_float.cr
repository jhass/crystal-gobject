module Pango
  class AttrFloat
    include GObject::WrappedType

    @pango_attr_float : LibPango::AttrFloat*?
    def initialize(@pango_attr_float : LibPango::AttrFloat*)
    end

    def to_unsafe
      @pango_attr_float.not_nil!
    end

  end
end

