require "./object"

module GObject
  class TypeModule < Object
    @pointer : Void*
    def initialize(pointer : LibGObject::TypeModule*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGObject::TypeModule*)
    end

    # Implements TypePlugin
    def add_interface(instance_type, interface_type, interface_info)
      LibGObject.type_module_add_interface(@pointer.as(LibGObject::TypeModule*), UInt64.new(instance_type), UInt64.new(interface_type), interface_info.to_unsafe.as(LibGObject::InterfaceInfo*))
      nil
    end

    def register_enum(name, const_static_values)
      __return_value = LibGObject.type_module_register_enum(@pointer.as(LibGObject::TypeModule*), name.to_unsafe, const_static_values.to_unsafe.as(LibGObject::EnumValue*))
      __return_value
    end

    def register_flags(name, const_static_values)
      __return_value = LibGObject.type_module_register_flags(@pointer.as(LibGObject::TypeModule*), name.to_unsafe, const_static_values.to_unsafe.as(LibGObject::FlagsValue*))
      __return_value
    end

    def register_type(parent_type, type_name, type_info, flags : GObject::TypeFlags)
      __return_value = LibGObject.type_module_register_type(@pointer.as(LibGObject::TypeModule*), UInt64.new(parent_type), type_name.to_unsafe, type_info.to_unsafe.as(LibGObject::TypeInfo*), flags)
      __return_value
    end

    def name=(name)
      LibGObject.type_module_set_name(@pointer.as(LibGObject::TypeModule*), name.to_unsafe)
      nil
    end

    def unuse
      LibGObject.type_module_unuse(@pointer.as(LibGObject::TypeModule*))
      nil
    end

    def use
      __return_value = LibGObject.type_module_use(@pointer.as(LibGObject::TypeModule*))
      __return_value
    end

  end
end

