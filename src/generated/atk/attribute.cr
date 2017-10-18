module Atk
  class Attribute
    include GObject::WrappedType

    def self.new(name : String|Nil = nil, value : String|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      new(ptr.as(LibAtk::Attribute*)).tap do |object|
        object.name = name unless name.nil?
        object.value = value unless value.nil?
      end
    end

    @atk_attribute : LibAtk::Attribute*?
    def initialize(@atk_attribute : LibAtk::Attribute*)
    end

    def to_unsafe
      @atk_attribute.not_nil!
    end

    def self.set_free(attrib_set)
      LibAtk.attribute_set_free(attrib_set)
      nil
    end

    def name
      (raise "Expected string but got null" unless (to_unsafe.as(LibAtk::Attribute*).value.name); ::String.new((to_unsafe.as(LibAtk::Attribute*).value.name)))
    end

    def name=(value : String)
      to_unsafe.as(LibAtk::Attribute*).value.name = value.to_unsafe
    end

    def value
      (raise "Expected string but got null" unless (to_unsafe.as(LibAtk::Attribute*).value.value); ::String.new((to_unsafe.as(LibAtk::Attribute*).value.value)))
    end

    def value=(value : String)
      to_unsafe.as(LibAtk::Attribute*).value.value = value.to_unsafe
    end

  end
end

