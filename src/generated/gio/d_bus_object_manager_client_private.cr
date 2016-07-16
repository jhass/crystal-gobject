module Gio
  class DBusObjectManagerClientPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::DBusObjectManagerClientPrivate*))
    end

    @gio_d_bus_object_manager_client_private : LibGio::DBusObjectManagerClientPrivate*?
    def initialize(@gio_d_bus_object_manager_client_private : LibGio::DBusObjectManagerClientPrivate*)
    end

    def to_unsafe
      @gio_d_bus_object_manager_client_private.not_nil!.as(Void*)
    end

  end
end

