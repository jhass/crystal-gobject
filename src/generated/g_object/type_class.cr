module GObject
  class TypeClass
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(8, 0)
      super(ptr.as(LibGObject::TypeClass*))
    end

    @g_object_type_class : LibGObject::TypeClass*?
    def initialize(@g_object_type_class : LibGObject::TypeClass*)
    end

    def to_unsafe
      @g_object_type_class.not_nil!.as(Void*)
    end

    def add_private(private_size)
      __return_value = LibGObject.type_class_add_private(to_unsafe.as(LibGObject::TypeClass*), UInt64.new(private_size))
      __return_value
    end

    def private(private_type)
      __return_value = LibGObject.type_class_get_private(to_unsafe.as(LibGObject::TypeClass*), UInt64.new(private_type))
      __return_value if __return_value
    end

    def peek_parent
      __return_value = LibGObject.type_class_peek_parent(to_unsafe.as(LibGObject::TypeClass*))
      GObject::TypeClass.new(__return_value)
    end

    def unref
      __return_value = LibGObject.type_class_unref(to_unsafe.as(LibGObject::TypeClass*))
      __return_value
    end

    def self.adjust_private_offset(g_class, private_size_or_offset)
      __return_value = LibGObject.type_class_adjust_private_offset(g_class && g_class, private_size_or_offset)
      __return_value
    end

    def self.peek(type)
      __return_value = LibGObject.type_class_peek(UInt64.new(type))
      GObject::TypeClass.new(__return_value)
    end

    def self.peek_static(type)
      __return_value = LibGObject.type_class_peek_static(UInt64.new(type))
      GObject::TypeClass.new(__return_value)
    end

    def self.ref(type)
      __return_value = LibGObject.type_class_ref(UInt64.new(type))
      GObject::TypeClass.new(__return_value)
    end

    def g_type
      (to_unsafe.as(LibGObject::TypeClass*).value.g_type)
    end

  end
end

