module Pango
  class AttrClass
    include GObject::WrappedType

    def initialize(@pango_attr_class)
    end

    def to_unsafe
      @pango_attr_class.not_nil!
    end

  end
end

