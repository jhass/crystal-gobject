module Gio
  class DBusSubtreeVTable
    include GObject::WrappedType

    @gio_d_bus_subtree_v_table : LibGio::DBusSubtreeVTable*?
    def initialize(@gio_d_bus_subtree_v_table : LibGio::DBusSubtreeVTable*)
    end

    def to_unsafe
      @gio_d_bus_subtree_v_table.not_nil!
    end

  end
end

