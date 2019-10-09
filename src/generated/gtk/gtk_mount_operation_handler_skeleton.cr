module Gtk
  class Gtk_MountOperationHandlerSkeleton
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(40, 0u8)
      super(ptr.as(LibGtk::Gtk_MountOperationHandlerSkeleton*))
    end

    @pointer : Void*
    def initialize(pointer : LibGtk::Gtk_MountOperationHandlerSkeleton*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Gtk_MountOperationHandlerSkeleton*)
    end

    def parent_instance
      Gio::DBusInterfaceSkeleton.new((to_unsafe.as(LibGtk::Gtk_MountOperationHandlerSkeleton*).value.parent_instance))
    end

    def priv
      (to_unsafe.as(LibGtk::Gtk_MountOperationHandlerSkeleton*).value.priv)
    end

  end
end

