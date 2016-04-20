module Pango
  class AttrClass
    include GObject::WrappedType

    @pango_attr_class : LibPango::AttrClass*?
    def initialize(@pango_attr_class : LibPango::AttrClass*)
    end

    def to_unsafe
      @pango_attr_class.not_nil!
    end

  end
end

