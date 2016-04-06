module Gio
  class DBusSubtreeVTable
    include GObject::WrappedType

    def initialize(@gio_d_bus_subtree_v_table)
    end

    def to_unsafe
      @gio_d_bus_subtree_v_table.not_nil!
    end

  end
end

