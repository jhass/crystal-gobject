module Atk
  class PropertyValues
    include GObject::WrappedType

    def self.new(property_name : String|Nil = nil, old_value : GObject::Value|Nil = nil, new_value : GObject::Value|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(56, 0u8)
      new(ptr.as(LibAtk::PropertyValues*)).tap do |object|
        object.property_name = property_name unless property_name.nil?
        object.old_value = old_value unless old_value.nil?
        object.new_value = new_value unless new_value.nil?
      end
    end

    @atk_property_values : LibAtk::PropertyValues*?
    def initialize(@atk_property_values : LibAtk::PropertyValues*)
    end

    def to_unsafe
      @atk_property_values.not_nil!
    end

    def property_name
      (raise "Expected string but got null" unless (to_unsafe.as(LibAtk::PropertyValues*).value.property_name); ::String.new((to_unsafe.as(LibAtk::PropertyValues*).value.property_name)))
    end

    def property_name=(value : String)
      to_unsafe.as(LibAtk::PropertyValues*).value.property_name = value
    end

    def old_value
      GObject::Value.new((to_unsafe.as(LibAtk::PropertyValues*).value.old_value))
    end

    def old_value=(value : GObject::Value)
      to_unsafe.as(LibAtk::PropertyValues*).value.old_value = value
    end

    def new_value
      GObject::Value.new((to_unsafe.as(LibAtk::PropertyValues*).value.new_value))
    end

    def new_value=(value : GObject::Value)
      to_unsafe.as(LibAtk::PropertyValues*).value.new_value = value
    end

  end
end

