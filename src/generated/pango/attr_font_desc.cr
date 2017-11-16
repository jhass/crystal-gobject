module Pango
  class AttrFontDesc
    include GObject::WrappedType

    def self.new(attr : Pango::Attribute|Nil = nil, desc : Pango::FontDescription|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(24, 0u8)
      new(ptr.as(LibPango::AttrFontDesc*)).tap do |object|
        object.attr = attr unless attr.nil?
        object.desc = desc unless desc.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibPango::AttrFontDesc*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::AttrFontDesc*)
    end

    def attr
      Pango::Attribute.new((to_unsafe.as(LibPango::AttrFontDesc*).value.attr))
    end

    def attr=(value : Pango::Attribute)
      to_unsafe.as(LibPango::AttrFontDesc*).value.attr = value
    end

    def desc
      Pango::FontDescription.new((to_unsafe.as(LibPango::AttrFontDesc*).value.desc))
    end

    def desc=(value : Pango::FontDescription)
      to_unsafe.as(LibPango::AttrFontDesc*).value.desc = value.to_unsafe.as(LibPango::FontDescription*)
    end

  end
end

