module Gdk
  class Color
    include GObject::WrappedType

    def self.new(pixel : UInt32|Nil = nil, red : UInt16|Nil = nil, green : UInt16|Nil = nil, blue : UInt16|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(12, 0u8)
      new(ptr.as(LibGdk::Color*)).tap do |object|
        object.pixel = pixel unless pixel.nil?
        object.red = red unless red.nil?
        object.green = green unless green.nil?
        object.blue = blue unless blue.nil?
      end
    end

    @gdk_color : LibGdk::Color*?
    def initialize(@gdk_color : LibGdk::Color*)
    end

    def to_unsafe
      @gdk_color.not_nil!
    end

    def copy
      __return_value = LibGdk.color_copy(to_unsafe.as(LibGdk::Color*))
      Gdk::Color.new(__return_value)
    end

    def equal(colorb)
      __return_value = LibGdk.color_equal(to_unsafe.as(LibGdk::Color*), colorb.to_unsafe.as(LibGdk::Color*))
      __return_value
    end

    def free
      __return_value = LibGdk.color_free(to_unsafe.as(LibGdk::Color*))
      __return_value
    end

    def hash
      __return_value = LibGdk.color_hash(to_unsafe.as(LibGdk::Color*))
      __return_value
    end

    def to_string
      __return_value = LibGdk.color_to_string(to_unsafe.as(LibGdk::Color*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.parse(spec, color)
      __return_value = LibGdk.color_parse(spec.to_unsafe, color)
      __return_value
    end

    def pixel
      (to_unsafe.value.pixel)
    end

    def pixel=(value : UInt32)
      to_unsafe.value.pixel = UInt32.new(value)
    end

    def red
      (to_unsafe.value.red)
    end

    def red=(value : UInt16)
      to_unsafe.value.red = UInt16.new(value)
    end

    def green
      (to_unsafe.value.green)
    end

    def green=(value : UInt16)
      to_unsafe.value.green = UInt16.new(value)
    end

    def blue
      (to_unsafe.value.blue)
    end

    def blue=(value : UInt16)
      to_unsafe.value.blue = UInt16.new(value)
    end

  end
end

