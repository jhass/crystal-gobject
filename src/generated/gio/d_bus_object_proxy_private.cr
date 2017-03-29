module Gio
  class DBusObjectProxyPrivate
    include GObject::WrappedType

    @gio_d_bus_object_proxy_private : LibGio::DBusObjectProxyPrivate*?
    def initialize(@gio_d_bus_object_proxy_private : LibGio::DBusObjectProxyPrivate*)
    end

    def to_unsafe
      @gio_d_bus_object_proxy_private.not_nil!
    end

  end
end

