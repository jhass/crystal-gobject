module Pango
  class AttrFontFeatures
    include GObject::WrappedType

    def self.new(attr : Pango::Attribute|Nil = nil, features : String|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(24, 0u8)
      new(ptr.as(LibPango::AttrFontFeatures*)).tap do |object|
        object.attr = attr unless attr.nil?
        object.features = features unless features.nil?
      end
    end

    @pango_attr_font_features : LibPango::AttrFontFeatures*?
    def initialize(@pango_attr_font_features : LibPango::AttrFontFeatures*)
    end

    def to_unsafe
      @pango_attr_font_features.not_nil!
    end

    def attr
      Pango::Attribute.new((to_unsafe.as(LibPango::AttrFontFeatures*).value.attr))
    end

    def attr=(value : Pango::Attribute)
      to_unsafe.as(LibPango::AttrFontFeatures*).value.attr = value
    end

    def features
      (raise "Expected string but got null" unless (to_unsafe.as(LibPango::AttrFontFeatures*).value.features); ::String.new((to_unsafe.as(LibPango::AttrFontFeatures*).value.features)))
    end

    def features=(value : String)
      to_unsafe.as(LibPango::AttrFontFeatures*).value.features = value
    end

  end
end

