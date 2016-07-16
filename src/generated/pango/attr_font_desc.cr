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

    @pango_attr_font_desc : LibPango::AttrFontDesc*?
    def initialize(@pango_attr_font_desc : LibPango::AttrFontDesc*)
    end

    def to_unsafe
      @pango_attr_font_desc.not_nil!
    end

    def attr
      Pango::Attribute.new((to_unsafe.value.attr))
    end

    def attr=(value : Pango::Attribute)
      to_unsafe.value.attr = value
    end

    def desc
      Pango::FontDescription.new((to_unsafe.value.desc))
    end

    def desc=(value : Pango::FontDescription)
      to_unsafe.value.desc = value.to_unsafe.as(LibPango::FontDescription*)
    end

  end
end

