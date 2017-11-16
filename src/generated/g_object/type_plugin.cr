module GObject
  module TypePlugin
    def complete_interface_info(instance_type, interface_type, info)
      LibGObject.type_plugin_complete_interface_info(@pointer.as(LibGObject::TypePlugin*), UInt64.new(instance_type), UInt64.new(interface_type), info.to_unsafe.as(LibGObject::InterfaceInfo*))
      nil
    end

    def complete_type_info(g_type, info, value_table)
      LibGObject.type_plugin_complete_type_info(@pointer.as(LibGObject::TypePlugin*), UInt64.new(g_type), info.to_unsafe.as(LibGObject::TypeInfo*), value_table.to_unsafe.as(LibGObject::TypeValueTable*))
      nil
    end

    def unuse
      LibGObject.type_plugin_unuse(@pointer.as(LibGObject::TypePlugin*))
      nil
    end

    def use
      LibGObject.type_plugin_use(@pointer.as(LibGObject::TypePlugin*))
      nil
    end

  end
end

