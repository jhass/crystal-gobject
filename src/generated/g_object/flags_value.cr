module GObject
  class FlagsValue
    include GObject::WrappedType

    def self.new(value : UInt32|Nil = nil, value_name : String|Nil = nil, value_nick : String|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(24, 0u8)
      new(ptr.as(LibGObject::FlagsValue*)).tap do |object|
        object.value = value unless value.nil?
        object.value_name = value_name unless value_name.nil?
        object.value_nick = value_nick unless value_nick.nil?
      end
    end

    @g_object_flags_value : LibGObject::FlagsValue*?
    def initialize(@g_object_flags_value : LibGObject::FlagsValue*)
    end

    def to_unsafe
      @g_object_flags_value.not_nil!
    end

    def value
      (to_unsafe.as(LibGObject::FlagsValue*).value.value)
    end

    def value=(value : UInt32)
      to_unsafe.as(LibGObject::FlagsValue*).value.value = UInt32.new(value)
    end

    def value_name
      (raise "Expected string but got null" unless (to_unsafe.as(LibGObject::FlagsValue*).value.value_name); ::String.new((to_unsafe.as(LibGObject::FlagsValue*).value.value_name)))
    end

    def value_name=(value : String)
      to_unsafe.as(LibGObject::FlagsValue*).value.value_name = value
    end

    def value_nick
      (raise "Expected string but got null" unless (to_unsafe.as(LibGObject::FlagsValue*).value.value_nick); ::String.new((to_unsafe.as(LibGObject::FlagsValue*).value.value_nick)))
    end

    def value_nick=(value : String)
      to_unsafe.as(LibGObject::FlagsValue*).value.value_nick = value
    end

  end
end

