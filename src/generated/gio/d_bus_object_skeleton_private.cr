module Gio
  class DBusObjectSkeletonPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::DBusObjectSkeletonPrivate*))
    end

    @gio_d_bus_object_skeleton_private : LibGio::DBusObjectSkeletonPrivate*?
    def initialize(@gio_d_bus_object_skeleton_private : LibGio::DBusObjectSkeletonPrivate*)
    end

    def to_unsafe
      @gio_d_bus_object_skeleton_private.not_nil!
    end

  end
end

