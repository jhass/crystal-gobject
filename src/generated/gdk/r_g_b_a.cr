module Gdk
  class RGBA
    include GObject::WrappedType

    def initialize(@gdk_r_g_b_a)
    end

    def to_unsafe
      @gdk_r_g_b_a.not_nil!
    end

    def copy
      __return_value = LibGdk.r_g_b_a_copy((to_unsafe as LibGdk::RGBA*))
      Gdk::RGBA.new(__return_value)
    end

    def equal(p2)
      __return_value = LibGdk.r_g_b_a_equal((to_unsafe as LibGdk::RGBA*), (p2.to_unsafe as LibGdk::RGBA*))
      __return_value
    end

    def free
      __return_value = LibGdk.r_g_b_a_free((to_unsafe as LibGdk::RGBA*))
      __return_value
    end

    def hash
      __return_value = LibGdk.r_g_b_a_hash((to_unsafe as LibGdk::RGBA*))
      __return_value
    end

    def parse(spec)
      __return_value = LibGdk.r_g_b_a_parse((to_unsafe as LibGdk::RGBA*), spec)
      __return_value
    end

    def to_string
      __return_value = LibGdk.r_g_b_a_to_string((to_unsafe as LibGdk::RGBA*))
      (raise "Expected string but got null" unless __return_value; String.new(__return_value))
    end

  end
end

