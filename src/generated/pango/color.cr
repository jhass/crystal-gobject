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

    @pointer : Void*
    def initialize(pointer : LibPango::Color*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::Color*)
    end

    def copy
      __return_value = LibPango.color_copy(@pointer.as(LibPango::Color*))
      Pango::Color.new(__return_value) if __return_value
    end

    def free
      LibPango.color_free(@pointer.as(LibPango::Color*))
      nil
    end

    def parse(spec)
      __return_value = LibPango.color_parse(@pointer.as(LibPango::Color*), spec.to_unsafe)
      __return_value
    end

    def to_string
      __return_value = LibPango.color_to_string(@pointer.as(LibPango::Color*))
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

