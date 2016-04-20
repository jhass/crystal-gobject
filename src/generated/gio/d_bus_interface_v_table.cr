module Gio
  class DBusInterfaceVTable
    include GObject::WrappedType

    @gio_d_bus_interface_v_table : LibGio::DBusInterfaceVTable*?
    def initialize(@gio_d_bus_interface_v_table : LibGio::DBusInterfaceVTable*)
    end

    def to_unsafe
      @gio_d_bus_interface_v_table.not_nil!
    end

  end
end

