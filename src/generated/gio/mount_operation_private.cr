module Gio
  class MountOperationPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::MountOperationPrivate*))
    end

    @gio_mount_operation_private : LibGio::MountOperationPrivate*?
    def initialize(@gio_mount_operation_private : LibGio::MountOperationPrivate*)
    end

    def to_unsafe
      @gio_mount_operation_private.not_nil!.as(Void*)
    end

  end
end

