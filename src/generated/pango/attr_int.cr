module Pango
  class AttrInt
    include GObject::WrappedType

    @pango_attr_int : LibPango::AttrInt*?
    def initialize(@pango_attr_int : LibPango::AttrInt*)
    end

    def to_unsafe
      @pango_attr_int.not_nil!
    end

  end
end

