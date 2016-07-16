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

    @pango_attr_int : LibPango::AttrInt*?
    def initialize(@pango_attr_int : LibPango::AttrInt*)
    end

    def to_unsafe
      @pango_attr_int.not_nil!
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

    def value=(value : Int32)
      to_unsafe.value.value = Int32.new(value)
    end

  end
end

