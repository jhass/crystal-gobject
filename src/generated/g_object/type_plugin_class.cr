module GObject
  class TypePluginClass
    include GObject::WrappedType

    def self.new(use_plugin : GObject::TypePluginUse|Nil = nil, unuse_plugin : GObject::TypePluginUnuse|Nil = nil, complete_type_info : GObject::TypePluginCompleteTypeInfo|Nil = nil, complete_interface_info : GObject::TypePluginCompleteInterfaceInfo|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(48, 0u8)
      new(ptr.as(LibGObject::TypePluginClass*)).tap do |object|
        object.use_plugin = use_plugin unless use_plugin.nil?
        object.unuse_plugin = unuse_plugin unless unuse_plugin.nil?
        object.complete_type_info = complete_type_info unless complete_type_info.nil?
        object.complete_interface_info = complete_interface_info unless complete_interface_info.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGObject::TypePluginClass*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::TypePluginClass*)
    end

    def base_iface
      GObject::TypeInterface.new((to_unsafe.as(LibGObject::TypePluginClass*).value.base_iface))
    end

    def use_plugin
      (to_unsafe.as(LibGObject::TypePluginClass*).value.use_plugin)
    end

    def use_plugin=(value : GObject::TypePluginUse)
      to_unsafe.as(LibGObject::TypePluginClass*).value.use_plugin = value
    end

    def unuse_plugin
      (to_unsafe.as(LibGObject::TypePluginClass*).value.unuse_plugin)
    end

    def unuse_plugin=(value : GObject::TypePluginUnuse)
      to_unsafe.as(LibGObject::TypePluginClass*).value.unuse_plugin = value
    end

    def complete_type_info
      (to_unsafe.as(LibGObject::TypePluginClass*).value.complete_type_info)
    end

    def complete_type_info=(value : GObject::TypePluginCompleteTypeInfo)
      to_unsafe.as(LibGObject::TypePluginClass*).value.complete_type_info = value
    end

    def complete_interface_info
      (to_unsafe.as(LibGObject::TypePluginClass*).value.complete_interface_info)
    end

    def complete_interface_info=(value : GObject::TypePluginCompleteInterfaceInfo)
      to_unsafe.as(LibGObject::TypePluginClass*).value.complete_interface_info = value
    end

  end
end

