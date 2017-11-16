module Pango
  class AttrInt
    include GObject::WrappedType

    def self.new(attr : Pango::Attribute|Nil = nil, value : Int32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(24, 0u8)
      new(ptr.as(LibPango::AttrInt*)).tap do |object|
        object.attr = attr unless attr.nil?
        object.value = value unless value.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibPango::AttrInt*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::AttrInt*)
    end

    def attr
      Pango::Attribute.new((to_unsafe.as(LibPango::AttrInt*).value.attr))
    end

    def attr=(value : Pango::Attribute)
      to_unsafe.as(LibPango::AttrInt*).value.attr = value
    end

    def value
      (to_unsafe.as(LibPango::AttrInt*).value.value)
    end

    def value=(value : Int32)
      to_unsafe.as(LibPango::AttrInt*).value.value = Int32.new(value)
    end

  end
end

