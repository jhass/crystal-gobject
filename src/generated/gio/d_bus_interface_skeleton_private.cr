module Gio
  class DBusInterfaceSkeletonPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::DBusInterfaceSkeletonPrivate*))
    end

    @gio_d_bus_interface_skeleton_private : LibGio::DBusInterfaceSkeletonPrivate*?
    def initialize(@gio_d_bus_interface_skeleton_private : LibGio::DBusInterfaceSkeletonPrivate*)
    end

    def to_unsafe
      @gio_d_bus_interface_skeleton_private.not_nil!
    end

  end
end

