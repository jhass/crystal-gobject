module Pango
  class AttrInt
    include GObject::WrappedType

    def initialize(@pango_attr_int)
    end

    def to_unsafe
      @pango_attr_int.not_nil!
    end

  end
end

