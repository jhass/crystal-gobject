module Gio
  class DBusInterfaceSkeletonPrivate
    include GObject::WrappedType

    def initialize(@gio_d_bus_interface_skeleton_private)
    end

    def to_unsafe
      @gio_d_bus_interface_skeleton_private.not_nil!
    end

  end
end

