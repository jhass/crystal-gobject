module Gtk
  class Gtk_MountOperationHandlerSkeletonPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::Gtk_MountOperationHandlerSkeletonPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Gtk_MountOperationHandlerSkeletonPrivate*)
    end

  end
end

