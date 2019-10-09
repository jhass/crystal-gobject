module Gtk
  class Gtk_MountOperationHandler
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::Gtk_MountOperationHandler*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Gtk_MountOperationHandler*)
    end

  end
end

