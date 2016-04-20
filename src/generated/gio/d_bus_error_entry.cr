module Gio
  class DBusErrorEntry
    include GObject::WrappedType

    @gio_d_bus_error_entry : LibGio::DBusErrorEntry*?
    def initialize(@gio_d_bus_error_entry : LibGio::DBusErrorEntry*)
    end

    def to_unsafe
      @gio_d_bus_error_entry.not_nil!
    end

  end
end

