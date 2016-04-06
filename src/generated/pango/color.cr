module Pango
  class Color
    include GObject::WrappedType

    def initialize(@pango_color)
    end

    def to_unsafe
      @pango_color.not_nil!
    end

    def copy
      __return_value = LibPango.color_copy((to_unsafe as LibPango::Color*))
      Pango::Color.new(__return_value) if __return_value
    end

    def free
      __return_value = LibPango.color_free((to_unsafe as LibPango::Color*))
      __return_value
    end

    def parse(spec)
      __return_value = LibPango.color_parse((to_unsafe as LibPango::Color*), spec)
      __return_value
    end

    def to_string
      __return_value = LibPango.color_to_string((to_unsafe as LibPango::Color*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

  end
end

