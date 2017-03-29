module Pango
  class AttrSize
    include GObject::WrappedType

    def self.new(attr : Pango::Attribute|Nil = nil, size : Int32|Nil = nil, absolute : UInt32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(24, 0u8)
      new(ptr.as(LibPango::AttrSize*)).tap do |object|
        object.attr = attr unless attr.nil?
        object.size = size unless size.nil?
        object.absolute = absolute unless absolute.nil?
      end
    end

    @pango_attr_size : LibPango::AttrSize*?
    def initialize(@pango_attr_size : LibPango::AttrSize*)
    end

    def to_unsafe
      @pango_attr_size.not_nil!
    end

    def attr
      Pango::Attribute.new((to_unsafe.as(LibPango::AttrSize*).value.attr))
    end

    def attr=(value : Pango::Attribute)
      to_unsafe.as(LibPango::AttrSize*).value.attr = value
    end

    def size
      (to_unsafe.as(LibPango::AttrSize*).value.size)
    end

    def size=(value : Int32)
      to_unsafe.as(LibPango::AttrSize*).value.size = Int32.new(value)
    end

    def absolute
      (to_unsafe.as(LibPango::AttrSize*).value.absolute)
    end

    def absolute=(value : UInt32)
      to_unsafe.as(LibPango::AttrSize*).value.absolute = UInt32.new(value)
    end

  end
end

