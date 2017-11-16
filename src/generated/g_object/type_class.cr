module GObject
  class TypeClass
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(8, 0u8)
      super(ptr.as(LibGObject::TypeClass*))
    end

    @pointer : Void*
    def initialize(pointer : LibGObject::TypeClass*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::TypeClass*)
    end

    def add_private(private_size)
      LibGObject.type_class_add_private(@pointer.as(LibGObject::TypeClass*), UInt64.new(private_size))
      nil
    end

    def private(private_type)
      LibGObject.type_class_get_private(@pointer.as(LibGObject::TypeClass*), UInt64.new(private_type))
      nil
    end

    def peek_parent
      __return_value = LibGObject.type_class_peek_parent(@pointer.as(LibGObject::TypeClass*))
      GObject::TypeClass.new(__return_value)
    end

    def unref
      LibGObject.type_class_unref(@pointer.as(LibGObject::TypeClass*))
      nil
    end

    def self.adjust_private_offset(g_class, private_size_or_offset)
      LibGObject.type_class_adjust_private_offset(g_class ? g_class : nil, private_size_or_offset)
      nil
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

