module Gio
  class DBusProxyPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::DBusProxyPrivate*))
    end

    @gio_d_bus_proxy_private : LibGio::DBusProxyPrivate*?
    def initialize(@gio_d_bus_proxy_private : LibGio::DBusProxyPrivate*)
    end

    def to_unsafe
      @gio_d_bus_proxy_private.not_nil!.as(Void*)
    end

  end
end

