module Gio
  class DBusProxyPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::DBusProxyPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::DBusProxyPrivate*)
    end

  end
end

