module Gio
  class DBusProxyPrivate
    include GObject::WrappedType

    def initialize(@gio_d_bus_proxy_private)
    end

    def to_unsafe
      @gio_d_bus_proxy_private.not_nil!
    end

  end
end

