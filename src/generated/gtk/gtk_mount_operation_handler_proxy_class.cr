module Gtk
  class Gtk_MountOperationHandlerProxyClass
    include GObject::WrappedType

    def self.new(parent_class : Gio::DBusProxyClass|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(408, 0u8)
      new(ptr.as(LibGtk::Gtk_MountOperationHandlerProxyClass*)).tap do |object|
        object.parent_class = parent_class unless parent_class.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGtk::Gtk_MountOperationHandlerProxyClass*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Gtk_MountOperationHandlerProxyClass*)
    end

    def parent_class
      Gio::DBusProxyClass.new((to_unsafe.as(LibGtk::Gtk_MountOperationHandlerProxyClass*).value.parent_class))
    end

    def parent_class=(value : Gio::DBusProxyClass)
      to_unsafe.as(LibGtk::Gtk_MountOperationHandlerProxyClass*).value.parent_class = value
    end

  end
end

