require "./object"

module GObject
  class TypeModule < Object
    def initialize(@g_object_type_module)
    end

    def to_unsafe
      @g_object_type_module.not_nil!
    end

    # Implements TypePlugin
    def add_interface(instance_type, interface_type, interface_info)
      __return_value = LibGObject.type_module_add_interface((to_unsafe as LibGObject::TypeModule*), UInt64.new(instance_type), UInt64.new(interface_type), (interface_info.to_unsafe as LibGObject::InterfaceInfo*))
      __return_value
    end

    def register_enum(name, const_static_values)
      __return_value = LibGObject.type_module_register_enum((to_unsafe as LibGObject::TypeModule*), name, (const_static_values.to_unsafe as LibGObject::EnumValue*))
      __return_value
    end

    def register_flags(name, const_static_values)
      __return_value = LibGObject.type_module_register_flags((to_unsafe as LibGObject::TypeModule*), name, (const_static_values.to_unsafe as LibGObject::FlagsValue*))
      __return_value
    end

    def register_type(parent_type, type_name, type_info, flags)
      __return_value = LibGObject.type_module_register_type((to_unsafe as LibGObject::TypeModule*), UInt64.new(parent_type), type_name, (type_info.to_unsafe as LibGObject::TypeInfo*), flags)
      __return_value
    end

    def name=(name)
      __return_value = LibGObject.type_module_set_name((to_unsafe as LibGObject::TypeModule*), name)
      __return_value
    end

    def unuse
      __return_value = LibGObject.type_module_unuse((to_unsafe as LibGObject::TypeModule*))
      __return_value
    end

    def use
      __return_value = LibGObject.type_module_use((to_unsafe as LibGObject::TypeModule*))
      __return_value
    end

  end
end

