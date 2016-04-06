module Pango
  class Attribute
    include GObject::WrappedType

    def initialize(@pango_attribute)
    end

    def to_unsafe
      @pango_attribute.not_nil!
    end

    def destroy
      __return_value = LibPango.attribute_destroy((to_unsafe as LibPango::Attribute*))
      __return_value
    end

    def equal(attr2)
      __return_value = LibPango.attribute_equal((to_unsafe as LibPango::Attribute*), (attr2.to_unsafe as LibPango::Attribute*))
      __return_value
    end

    def init(klass)
      __return_value = LibPango.attribute_init((to_unsafe as LibPango::Attribute*), (klass.to_unsafe as LibPango::AttrClass*))
      __return_value
    end

  end
end

