module Gtk
  class MountOperationPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGtk::MountOperationPrivate*))
    end

    @gtk_mount_operation_private : LibGtk::MountOperationPrivate*?
    def initialize(@gtk_mount_operation_private : LibGtk::MountOperationPrivate*)
    end

    def to_unsafe
      @gtk_mount_operation_private.not_nil!.as(Void*)
    end

  end
end

