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

    @pointer : Void*
    def initialize(pointer : LibGdk::Color*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGdk::Color*)
    end

    def copy
      __return_value = LibGdk.color_copy(@pointer.as(LibGdk::Color*))
      Gdk::Color.new(__return_value)
    end

    def equal(colorb)
      __return_value = LibGdk.color_equal(@pointer.as(LibGdk::Color*), colorb.to_unsafe.as(LibGdk::Color*))
      __return_value
    end

    def free
      LibGdk.color_free(@pointer.as(LibGdk::Color*))
      nil
    end

    def hash
      __return_value = LibGdk.color_hash(@pointer.as(LibGdk::Color*))
      __return_value
    end

    def to_string
      __return_value = LibGdk.color_to_string(@pointer.as(LibGdk::Color*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.parse(spec, color)
      __return_value = LibGdk.color_parse(spec.to_unsafe, color)
      __return_value
    end

    def pixel
      (to_unsafe.as(LibGdk::Color*).value.pixel)
    end

    def pixel=(value : UInt32)
      to_unsafe.as(LibGdk::Color*).value.pixel = UInt32.new(value)
    end

    def red
      (to_unsafe.as(LibGdk::Color*).value.red)
    end

    def red=(value : UInt16)
      to_unsafe.as(LibGdk::Color*).value.red = UInt16.new(value)
    end

    def green
      (to_unsafe.as(LibGdk::Color*).value.green)
    end

    def green=(value : UInt16)
      to_unsafe.as(LibGdk::Color*).value.green = UInt16.new(value)
    end

    def blue
      (to_unsafe.as(LibGdk::Color*).value.blue)
    end

    def blue=(value : UInt16)
      to_unsafe.as(LibGdk::Color*).value.blue = UInt16.new(value)
    end

  end
end

