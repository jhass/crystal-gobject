module GObject
  class InterfaceInfo
    include GObject::WrappedType

    def self.new(interface_init : GObject::InterfaceInitFunc|Nil = nil, interface_finalize : GObject::InterfaceFinalizeFunc|Nil = nil, interface_data : Void*|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(24, 0u8)
      new(ptr.as(LibGObject::InterfaceInfo*)).tap do |object|
        object.interface_init = interface_init unless interface_init.nil?
        object.interface_finalize = interface_finalize unless interface_finalize.nil?
        object.interface_data = interface_data unless interface_data.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGObject::InterfaceInfo*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::InterfaceInfo*)
    end

    def interface_init
      (to_unsafe.as(LibGObject::InterfaceInfo*).value.interface_init)
    end

    def interface_init=(value : GObject::InterfaceInitFunc)
      to_unsafe.as(LibGObject::InterfaceInfo*).value.interface_init = value
    end

    def interface_finalize
      (to_unsafe.as(LibGObject::InterfaceInfo*).value.interface_finalize)
    end

    def interface_finalize=(value : GObject::InterfaceFinalizeFunc)
      to_unsafe.as(LibGObject::InterfaceInfo*).value.interface_finalize = value
    end

    def interface_data
      (to_unsafe.as(LibGObject::InterfaceInfo*).value.interface_data)
    end

    def interface_data=(value : Void*)
      to_unsafe.as(LibGObject::InterfaceInfo*).value.interface_data = value
    end

  end
end

