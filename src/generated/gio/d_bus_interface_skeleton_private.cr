module Gio
  class DBusInterfaceSkeletonPrivate
    include GObject::WrappedType

    @gio_d_bus_interface_skeleton_private : LibGio::DBusInterfaceSkeletonPrivate*?
    def initialize(@gio_d_bus_interface_skeleton_private : LibGio::DBusInterfaceSkeletonPrivate*)
    end

    def to_unsafe
      @gio_d_bus_interface_skeleton_private.not_nil!.as(Void*)
    end

  end
end

