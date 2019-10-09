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

    @pointer : Void*
    def initialize(pointer : LibPango::AttrFontFeatures*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibPango::AttrFontFeatures*)
    end

    def self.new(features)
      __return_value = LibPango.attr_font_features_new(features.to_unsafe)
      Pango::Attribute.new(__return_value)
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
      to_unsafe.as(LibPango::AttrFontFeatures*).value.features = value.to_unsafe
    end

  end
end

