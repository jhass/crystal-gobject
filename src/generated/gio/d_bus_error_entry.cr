module Gio
  class DBusErrorEntry
    include GObject::WrappedType

    def initialize(@gio_d_bus_error_entry)
    end

    def to_unsafe
      @gio_d_bus_error_entry.not_nil!
    end

  end
end

