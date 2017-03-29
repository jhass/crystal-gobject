module Pango
  class AttrString
    include GObject::WrappedType

    def self.new(attr : Pango::Attribute|Nil = nil, value : String|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(24, 0u8)
      new(ptr.as(LibPango::AttrString*)).tap do |object|
        object.attr = attr unless attr.nil?
        object.value = value unless value.nil?
      end
    end

    @pango_attr_string : LibPango::AttrString*?
    def initialize(@pango_attr_string : LibPango::AttrString*)
    end

    def to_unsafe
      @pango_attr_string.not_nil!
    end

    def attr
      Pango::Attribute.new((to_unsafe.as(LibPango::AttrString*).value.attr))
    end

    def attr=(value : Pango::Attribute)
      to_unsafe.as(LibPango::AttrString*).value.attr = value
    end

    def value
      (raise "Expected string but got null" unless (to_unsafe.as(LibPango::AttrString*).value.value); ::String.new((to_unsafe.as(LibPango::AttrString*).value.value)))
    end

    def value=(value : String)
      to_unsafe.as(LibPango::AttrString*).value.value = value
    end

  end
end

