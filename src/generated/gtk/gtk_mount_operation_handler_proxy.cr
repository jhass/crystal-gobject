module Gtk
  class Gtk_MountOperationHandlerProxy
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(40, 0u8)
      super(ptr.as(LibGtk::Gtk_MountOperationHandlerProxy*))
    end

    @pointer : Void*
    def initialize(pointer : LibGtk::Gtk_MountOperationHandlerProxy*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Gtk_MountOperationHandlerProxy*)
    end

    def parent_instance
      Gio::DBusProxy.new((to_unsafe.as(LibGtk::Gtk_MountOperationHandlerProxy*).value.parent_instance))
    end

    def priv
      (to_unsafe.as(LibGtk::Gtk_MountOperationHandlerProxy*).value.priv)
    end

  end
end

