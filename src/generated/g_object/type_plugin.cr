module GObject
  module TypePlugin
    def complete_interface_info(instance_type, interface_type, info)
      __return_value = LibGObject.type_plugin_complete_interface_info(to_unsafe.as(LibGObject::TypePlugin*), UInt64.new(instance_type), UInt64.new(interface_type), info.to_unsafe.as(LibGObject::InterfaceInfo*))
      __return_value
    end

    def complete_type_info(g_type, info, value_table)
      __return_value = LibGObject.type_plugin_complete_type_info(to_unsafe.as(LibGObject::TypePlugin*), UInt64.new(g_type), info.to_unsafe.as(LibGObject::TypeInfo*), value_table.to_unsafe.as(LibGObject::TypeValueTable*))
      __return_value
    end

    def unuse
      __return_value = LibGObject.type_plugin_unuse(to_unsafe.as(LibGObject::TypePlugin*))
      __return_value
    end

    def use
      __return_value = LibGObject.type_plugin_use(to_unsafe.as(LibGObject::TypePlugin*))
      __return_value
    end

  end
end

