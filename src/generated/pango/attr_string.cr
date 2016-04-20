module Pango
  class AttrString
    include GObject::WrappedType

    @pango_attr_string : LibPango::AttrString*?
    def initialize(@pango_attr_string : LibPango::AttrString*)
    end

    def to_unsafe
      @pango_attr_string.not_nil!
    end

  end
end

