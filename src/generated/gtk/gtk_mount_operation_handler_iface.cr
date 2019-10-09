module Gtk
  class Gtk_MountOperationHandlerIface
    include GObject::WrappedType

    def self.new(parent_iface : GObject::TypeInterface|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(48, 0u8)
      new(ptr.as(LibGtk::Gtk_MountOperationHandlerIface*)).tap do |object|
        object.parent_iface = parent_iface unless parent_iface.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGtk::Gtk_MountOperationHandlerIface*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Gtk_MountOperationHandlerIface*)
    end

    def parent_iface
      GObject::TypeInterface.new((to_unsafe.as(LibGtk::Gtk_MountOperationHandlerIface*).value.parent_iface))
    end

    def parent_iface=(value : GObject::TypeInterface)
      to_unsafe.as(LibGtk::Gtk_MountOperationHandlerIface*).value.parent_iface = value
    end

    def handle_ask_password
      (to_unsafe.as(LibGtk::Gtk_MountOperationHandlerIface*).value.handle_ask_password)
    end

    def handle_ask_question
      (to_unsafe.as(LibGtk::Gtk_MountOperationHandlerIface*).value.handle_ask_question)
    end

    def handle_close
      (to_unsafe.as(LibGtk::Gtk_MountOperationHandlerIface*).value.handle_close)
    end

    def handle_show_processes
      (to_unsafe.as(LibGtk::Gtk_MountOperationHandlerIface*).value.handle_show_processes)
    end

  end
end

