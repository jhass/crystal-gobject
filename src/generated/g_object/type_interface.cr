module GObject
  class TypeInterface
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      super(ptr.as(LibGObject::TypeInterface*))
    end

    @g_object_type_interface : LibGObject::TypeInterface*?
    def initialize(@g_object_type_interface : LibGObject::TypeInterface*)
    end

    def to_unsafe
      @g_object_type_interface.not_nil!
    end

    def peek_parent
      __return_value = LibGObject.type_interface_peek_parent(to_unsafe.as(LibGObject::TypeInterface*))
      GObject::TypeInterface.new(__return_value)
    end

    def self.add_prerequisite(interface_type, prerequisite_type)
      LibGObject.type_interface_add_prerequisite(UInt64.new(interface_type), UInt64.new(prerequisite_type))
      nil
    end

    def self.plugin(instance_type, interface_type)
      __return_value = LibGObject.type_interface_get_plugin(UInt64.new(instance_type), UInt64.new(interface_type))
      __return_value
    end

    def self.peek(instance_class, iface_type)
      __return_value = LibGObject.type_interface_peek(instance_class.to_unsafe.as(LibGObject::TypeClass*), UInt64.new(iface_type))
      GObject::TypeInterface.new(__return_value)
    end

    def self.prerequisites(interface_type, n_prerequisites)
      __return_value = LibGObject.type_interface_prerequisites(UInt64.new(interface_type), n_prerequisites)
      PointerIterator.new(__return_value) {|__item| __item }
    end

    def g_type
      (to_unsafe.as(LibGObject::TypeInterface*).value.g_type)
    end

    def g_instance_type
      (to_unsafe.as(LibGObject::TypeInterface*).value.g_instance_type)
    end

  end
end

