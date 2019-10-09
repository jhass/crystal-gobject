module Gtk
  class Gtk_MountOperationHandlerProxyPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::Gtk_MountOperationHandlerProxyPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Gtk_MountOperationHandlerProxyPrivate*)
    end

  end
end

