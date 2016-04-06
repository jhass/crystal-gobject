module Pango
  class AttrString
    include GObject::WrappedType

    def initialize(@pango_attr_string)
    end

    def to_unsafe
      @pango_attr_string.not_nil!
    end

  end
end

