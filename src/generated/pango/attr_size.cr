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

    @pointer : Void*
    def initialize(pointer : LibPango::AttrSize*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::AttrSize*)
    end

    def self.new(size)
      __return_value = LibPango.attr_size_new(Int32.new(size))
      Pango::Attribute.new(__return_value)
    end

    def self.new_absolute(size)
      __return_value = LibPango.attr_size_new_absolute(Int32.new(size))
      Pango::Attribute.new(__return_value)
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

