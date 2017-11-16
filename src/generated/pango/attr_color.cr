module Pango
  class AttrColor
    include GObject::WrappedType

    def self.new(attr : Pango::Attribute|Nil = nil, color : Pango::Color|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(24, 0u8)
      new(ptr.as(LibPango::AttrColor*)).tap do |object|
        object.attr = attr unless attr.nil?
        object.color = color unless color.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibPango::AttrColor*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::AttrColor*)
    end

    def attr
      Pango::Attribute.new((to_unsafe.as(LibPango::AttrColor*).value.attr))
    end

    def attr=(value : Pango::Attribute)
      to_unsafe.as(LibPango::AttrColor*).value.attr = value
    end

    def color
      Pango::Color.new((to_unsafe.as(LibPango::AttrColor*).value.color))
    end

    def color=(value : Pango::Color)
      to_unsafe.as(LibPango::AttrColor*).value.color = value
    end

  end
end

