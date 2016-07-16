module Pango
  class AttrFloat
    include GObject::WrappedType

    def self.new(attr : Pango::Attribute|Nil = nil, value : Float64|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(24, 0u8)
      new(ptr.as(LibPango::AttrFloat*)).tap do |object|
        object.attr = attr unless attr.nil?
        object.value = value unless value.nil?
      end
    end

    @pango_attr_float : LibPango::AttrFloat*?
    def initialize(@pango_attr_float : LibPango::AttrFloat*)
    end

    def to_unsafe
      @pango_attr_float.not_nil!
    end

    def attr
      Pango::Attribute.new((to_unsafe.value.attr))
    end

    def attr=(value : Pango::Attribute)
      to_unsafe.value.attr = value
    end

    def value
      (to_unsafe.value.value)
    end

    def value=(value : Float64)
      to_unsafe.value.value = Float64.new(value)
    end

  end
end

