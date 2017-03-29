module GObject
  class TypeQuery
    include GObject::WrappedType

    def self.new(type : UInt64|Nil = nil, type_name : String|Nil = nil, class_size : UInt32|Nil = nil, instance_size : UInt32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(24, 0u8)
      new(ptr.as(LibGObject::TypeQuery*)).tap do |object|
        object.type = type unless type.nil?
        object.type_name = type_name unless type_name.nil?
        object.class_size = class_size unless class_size.nil?
        object.instance_size = instance_size unless instance_size.nil?
      end
    end

    @g_object_type_query : LibGObject::TypeQuery*?
    def initialize(@g_object_type_query : LibGObject::TypeQuery*)
    end

    def to_unsafe
      @g_object_type_query.not_nil!
    end

    def type
      (to_unsafe.as(LibGObject::TypeQuery*).value.type)
    end

    def type=(value : UInt64)
      to_unsafe.as(LibGObject::TypeQuery*).value.type = UInt64.new(value)
    end

    def type_name
      (raise "Expected string but got null" unless (to_unsafe.as(LibGObject::TypeQuery*).value.type_name); ::String.new((to_unsafe.as(LibGObject::TypeQuery*).value.type_name)))
    end

    def type_name=(value : String)
      to_unsafe.as(LibGObject::TypeQuery*).value.type_name = value.to_unsafe
    end

    def class_size
      (to_unsafe.as(LibGObject::TypeQuery*).value.class_size)
    end

    def class_size=(value : UInt32)
      to_unsafe.as(LibGObject::TypeQuery*).value.class_size = UInt32.new(value)
    end

    def instance_size
      (to_unsafe.as(LibGObject::TypeQuery*).value.instance_size)
    end

    def instance_size=(value : UInt32)
      to_unsafe.as(LibGObject::TypeQuery*).value.instance_size = UInt32.new(value)
    end

  end
end

