module Gtk
  class Gtk_MountOperationHandlerSkeletonClass
    include GObject::WrappedType

    def self.new(parent_class : Gio::DBusInterfaceSkeletonClass|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(304, 0u8)
      new(ptr.as(LibGtk::Gtk_MountOperationHandlerSkeletonClass*)).tap do |object|
        object.parent_class = parent_class unless parent_class.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGtk::Gtk_MountOperationHandlerSkeletonClass*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Gtk_MountOperationHandlerSkeletonClass*)
    end

    def parent_class
      Gio::DBusInterfaceSkeletonClass.new((to_unsafe.as(LibGtk::Gtk_MountOperationHandlerSkeletonClass*).value.parent_class))
    end

    def parent_class=(value : Gio::DBusInterfaceSkeletonClass)
      to_unsafe.as(LibGtk::Gtk_MountOperationHandlerSkeletonClass*).value.parent_class = value
    end

  end
end

