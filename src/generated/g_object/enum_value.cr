module GObject
  class EnumValue
    include GObject::WrappedType

    def self.new(value : Int32|Nil = nil, value_name : String|Nil = nil, value_nick : String|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(24, 0u8)
      new(ptr.as(LibGObject::EnumValue*)).tap do |object|
        object.value = value unless value.nil?
        object.value_name = value_name unless value_name.nil?
        object.value_nick = value_nick unless value_nick.nil?
      end
    end

    @g_object_enum_value : LibGObject::EnumValue*?
    def initialize(@g_object_enum_value : LibGObject::EnumValue*)
    end

    def to_unsafe
      @g_object_enum_value.not_nil!.as(Void*)
    end

    def value
      (to_unsafe.as(LibGObject::EnumValue*).value.value)
    end

    def value=(value : Int32)
      to_unsafe.as(LibGObject::EnumValue*).value.value = Int32.new(value)
    end

    def value_name
      (raise "Expected string but got null" unless (to_unsafe.as(LibGObject::EnumValue*).value.value_name); ::String.new((to_unsafe.as(LibGObject::EnumValue*).value.value_name)))
    end

    def value_name=(value : String)
      to_unsafe.as(LibGObject::EnumValue*).value.value_name = value.to_unsafe
    end

    def value_nick
      (raise "Expected string but got null" unless (to_unsafe.as(LibGObject::EnumValue*).value.value_nick); ::String.new((to_unsafe.as(LibGObject::EnumValue*).value.value_nick)))
    end

    def value_nick=(value : String)
      to_unsafe.as(LibGObject::EnumValue*).value.value_nick = value.to_unsafe
    end

  end
end

