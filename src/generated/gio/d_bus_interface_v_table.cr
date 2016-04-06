module Gio
  class DBusInterfaceVTable
    include GObject::WrappedType

    def initialize(@gio_d_bus_interface_v_table)
    end

    def to_unsafe
      @gio_d_bus_interface_v_table.not_nil!
    end

  end
end

