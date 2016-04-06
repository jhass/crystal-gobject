module Gio
  class DBusNodeInfo
    include GObject::WrappedType

    def initialize(@gio_d_bus_node_info)
    end

    def to_unsafe
      @gio_d_bus_node_info.not_nil!
    end

    def self.new_for_xml(xml_data)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_node_info_new_for_xml(xml_data, pointerof(__error))
      GLib::Error.assert __error
      Gio::DBusNodeInfo.new(__return_value)
    end

    def generate_xml(indent, string_builder)
      __return_value = LibGio.d_bus_node_info_generate_xml((to_unsafe as LibGio::DBusNodeInfo*), UInt32.new(indent), string_builder)
      __return_value
    end

    def lookup_interface(name)
      __return_value = LibGio.d_bus_node_info_lookup_interface((to_unsafe as LibGio::DBusNodeInfo*), name)
      Gio::DBusInterfaceInfo.new(__return_value)
    end

    def ref
      __return_value = LibGio.d_bus_node_info_ref((to_unsafe as LibGio::DBusNodeInfo*))
      Gio::DBusNodeInfo.new(__return_value)
    end

    def unref
      __return_value = LibGio.d_bus_node_info_unref((to_unsafe as LibGio::DBusNodeInfo*))
      __return_value
    end

  end
end

