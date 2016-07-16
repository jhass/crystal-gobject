module Gio
  class DBusObjectManagerServerPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::DBusObjectManagerServerPrivate*))
    end

    @gio_d_bus_object_manager_server_private : LibGio::DBusObjectManagerServerPrivate*?
    def initialize(@gio_d_bus_object_manager_server_private : LibGio::DBusObjectManagerServerPrivate*)
    end

    def to_unsafe
      @gio_d_bus_object_manager_server_private.not_nil!
    end

  end
end

