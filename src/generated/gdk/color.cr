module Gdk
  class Color
    include GObject::WrappedType

    def initialize(@gdk_color)
    end

    def to_unsafe
      @gdk_color.not_nil!
    end

    def copy
      __return_value = LibGdk.color_copy((to_unsafe as LibGdk::Color*))
      Gdk::Color.new(__return_value)
    end

    def equal(colorb)
      __return_value = LibGdk.color_equal((to_unsafe as LibGdk::Color*), (colorb.to_unsafe as LibGdk::Color*))
      __return_value
    end

    def free
      __return_value = LibGdk.color_free((to_unsafe as LibGdk::Color*))
      __return_value
    end

    def hash
      __return_value = LibGdk.color_hash((to_unsafe as LibGdk::Color*))
      __return_value
    end

    def to_string
      __return_value = LibGdk.color_to_string((to_unsafe as LibGdk::Color*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

    def self.parse(spec, color)
      __return_value = LibGdk.color_parse(spec, color)
      __return_value
    end

  end
end

