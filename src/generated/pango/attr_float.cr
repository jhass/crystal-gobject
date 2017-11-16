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

    @pointer : Void*
    def initialize(pointer : LibPango::AttrFloat*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::AttrFloat*)
    end

    def attr
      Pango::Attribute.new((to_unsafe.as(LibPango::AttrFloat*).value.attr))
    end

    def attr=(value : Pango::Attribute)
      to_unsafe.as(LibPango::AttrFloat*).value.attr = value
    end

    def value
      (to_unsafe.as(LibPango::AttrFloat*).value.value)
    end

    def value=(value : Float64)
      to_unsafe.as(LibPango::AttrFloat*).value.value = Float64.new(value)
    end

  end
end

