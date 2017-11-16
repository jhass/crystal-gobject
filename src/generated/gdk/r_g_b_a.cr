module Gdk
  class RGBA
    include GObject::WrappedType

    def self.new(red : Float64|Nil = nil, green : Float64|Nil = nil, blue : Float64|Nil = nil, alpha : Float64|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(32, 0u8)
      new(ptr.as(LibGdk::RGBA*)).tap do |object|
        object.red = red unless red.nil?
        object.green = green unless green.nil?
        object.blue = blue unless blue.nil?
        object.alpha = alpha unless alpha.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGdk::RGBA*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGdk::RGBA*)
    end

    def copy
      __return_value = LibGdk.r_g_b_a_copy(@pointer.as(LibGdk::RGBA*))
      Gdk::RGBA.new(__return_value)
    end

    def equal(p2)
      __return_value = LibGdk.r_g_b_a_equal(@pointer.as(LibGdk::RGBA*), p2.to_unsafe.as(LibGdk::RGBA*))
      __return_value
    end

    def free
      LibGdk.r_g_b_a_free(@pointer.as(LibGdk::RGBA*))
      nil
    end

    def hash
      __return_value = LibGdk.r_g_b_a_hash(@pointer.as(LibGdk::RGBA*))
      __return_value
    end

    def parse(spec)
      __return_value = LibGdk.r_g_b_a_parse(@pointer.as(LibGdk::RGBA*), spec.to_unsafe)
      __return_value
    end

    def to_string
      __return_value = LibGdk.r_g_b_a_to_string(@pointer.as(LibGdk::RGBA*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def red
      (to_unsafe.as(LibGdk::RGBA*).value.red)
    end

    def red=(value : Float64)
      to_unsafe.as(LibGdk::RGBA*).value.red = Float64.new(value)
    end

    def green
      (to_unsafe.as(LibGdk::RGBA*).value.green)
    end

    def green=(value : Float64)
      to_unsafe.as(LibGdk::RGBA*).value.green = Float64.new(value)
    end

    def blue
      (to_unsafe.as(LibGdk::RGBA*).value.blue)
    end

    def blue=(value : Float64)
      to_unsafe.as(LibGdk::RGBA*).value.blue = Float64.new(value)
    end

    def alpha
      (to_unsafe.as(LibGdk::RGBA*).value.alpha)
    end

    def alpha=(value : Float64)
      to_unsafe.as(LibGdk::RGBA*).value.alpha = Float64.new(value)
    end

  end
end

