module Gio
  class DBusObjectProxyPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::DBusObjectProxyPrivate*))
    end

    @gio_d_bus_object_proxy_private : LibGio::DBusObjectProxyPrivate*?
    def initialize(@gio_d_bus_object_proxy_private : LibGio::DBusObjectProxyPrivate*)
    end

    def to_unsafe
      @gio_d_bus_object_proxy_private.not_nil!.as(Void*)
    end

  end
end

