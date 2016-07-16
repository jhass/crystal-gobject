module GObject
  class TypeInstance
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(8, 0)
      super(ptr.as(LibGObject::TypeInstance*))
    end

    @g_object_type_instance : LibGObject::TypeInstance*?
    def initialize(@g_object_type_instance : LibGObject::TypeInstance*)
    end

    def to_unsafe
      @g_object_type_instance.not_nil!
    end

    def private(private_type)
      __return_value = LibGObject.type_instance_get_private(to_unsafe.as(LibGObject::TypeInstance*), UInt64.new(private_type))
      __return_value if __return_value
    end

    def g_class
      GObject::TypeClass.new((to_unsafe.value.g_class))
    end

  end
end

