module GObject
  class TypeInstance
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(8, 0u8)
      super(ptr.as(LibGObject::TypeInstance*))
    end

    @pointer : Void*
    def initialize(pointer : LibGObject::TypeInstance*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::TypeInstance*)
    end

    def private(private_type)
      LibGObject.type_instance_get_private(@pointer.as(LibGObject::TypeInstance*), UInt64.new(private_type))
      nil
    end

    def g_class
      GObject::TypeClass.new((to_unsafe.as(LibGObject::TypeInstance*).value.g_class))
    end

  end
end

