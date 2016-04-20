module Gio
  class DBusObjectSkeletonPrivate
    include GObject::WrappedType

    @gio_d_bus_object_skeleton_private : LibGio::DBusObjectSkeletonPrivate*?
    def initialize(@gio_d_bus_object_skeleton_private : LibGio::DBusObjectSkeletonPrivate*)
    end

    def to_unsafe
      @gio_d_bus_object_skeleton_private.not_nil!
    end

  end
end

