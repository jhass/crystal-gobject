module Gio
  class DBusObjectProxyPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::DBusObjectProxyPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::DBusObjectProxyPrivate*)
    end

  end
end

