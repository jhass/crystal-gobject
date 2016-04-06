module Pango
  class AttrFloat
    include GObject::WrappedType

    def initialize(@pango_attr_float)
    end

    def to_unsafe
      @pango_attr_float.not_nil!
    end

  end
end

