module GObject
  class TypeClass
    include GObject::WrappedType

    def initialize(@g_object_type_class)
    end

    def to_unsafe
      @g_object_type_class.not_nil!
    end

    def peek_parent
      __return_value = LibGObject.type_class_peek_parent((to_unsafe as LibGObject::TypeClass*))
      GObject::TypeClass.new(__return_value)
    end

    def unref
      __return_value = LibGObject.type_class_unref((to_unsafe as LibGObject::TypeClass*))
      __return_value
    end

    def self.add_private(g_class, private_size)
      __return_value = LibGObject.type_class_add_private(g_class, UInt64.new(private_size))
      __return_value
    end

    def self.adjust_private_offset(g_class, private_size_or_offset)
      __return_value = LibGObject.type_class_adjust_private_offset(g_class, private_size_or_offset)
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

  end
end

