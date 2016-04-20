module Pango
  class AttrSize
    include GObject::WrappedType

    @pango_attr_size : LibPango::AttrSize*?
    def initialize(@pango_attr_size : LibPango::AttrSize*)
    end

    def to_unsafe
      @pango_attr_size.not_nil!
    end

  end
end

