module Pango
  class Color
    include GObject::WrappedType

    def self.new(red : UInt16|Nil = nil, green : UInt16|Nil = nil, blue : UInt16|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(6, 0u8)
      new(ptr.as(LibPango::Color*)).tap do |object|
        object.red = red unless red.nil?
        object.green = green unless green.nil?
        object.blue = blue unless blue.nil?
      end
    end

    @pango_color : LibPango::Color*?
    def initialize(@pango_color : LibPango::Color*)
    end

    def to_unsafe
      @pango_color.not_nil!
    end

    def copy
      __return_value = LibPango.color_copy(to_unsafe.as(LibPango::Color*))
      Pango::Color.new(__return_value) if __return_value
    end

    def free
      LibPango.color_free(to_unsafe.as(LibPango::Color*))
      nil
    end

    def parse(spec)
      __return_value = LibPango.color_parse(to_unsafe.as(LibPango::Color*), spec.to_unsafe)
      __return_value
    end

    def to_string
      __return_value = LibPango.color_to_string(to_unsafe.as(LibPango::Color*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def red
      (to_unsafe.as(LibPango::Color*).value.red)
    end

    def red=(value : UInt16)
      to_unsafe.as(LibPango::Color*).value.red = UInt16.new(value)
    end

    def green
      (to_unsafe.as(LibPango::Color*).value.green)
    end

    def green=(value : UInt16)
      to_unsafe.as(LibPango::Color*).value.green = UInt16.new(value)
    end

    def blue
      (to_unsafe.as(LibPango::Color*).value.blue)
    end

    def blue=(value : UInt16)
      to_unsafe.as(LibPango::Color*).value.blue = UInt16.new(value)
    end

  end
end

