module Pango
  class AttrLanguage
    include GObject::WrappedType

    def self.new(attr : Pango::Attribute|Nil = nil, value : Pango::Language|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(24, 0u8)
      new(ptr.as(LibPango::AttrLanguage*)).tap do |object|
        object.attr = attr unless attr.nil?
        object.value = value unless value.nil?
      end
    end

    @pango_attr_language : LibPango::AttrLanguage*?
    def initialize(@pango_attr_language : LibPango::AttrLanguage*)
    end

    def to_unsafe
      @pango_attr_language.not_nil!.as(Void*)
    end

    def attr
      Pango::Attribute.new((to_unsafe.as(LibPango::AttrLanguage*).value.attr))
    end

    def attr=(value : Pango::Attribute)
      to_unsafe.as(LibPango::AttrLanguage*).value.attr = value
    end

    def value
      Pango::Language.new((to_unsafe.as(LibPango::AttrLanguage*).value.value))
    end

    def value=(value : Pango::Language)
      to_unsafe.as(LibPango::AttrLanguage*).value.value = value.to_unsafe.as(LibPango::Language*)
    end

  end
end

