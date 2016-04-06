module Pango
  class AttrSize
    include GObject::WrappedType

    def initialize(@pango_attr_size)
    end

    def to_unsafe
      @pango_attr_size.not_nil!
    end

  end
end

