module Gtk
  class MountOperationPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::MountOperationPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::MountOperationPrivate*)
    end

  end
end

