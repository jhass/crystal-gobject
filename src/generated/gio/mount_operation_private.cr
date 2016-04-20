module Gio
  class MountOperationPrivate
    include GObject::WrappedType

    @gio_mount_operation_private : LibGio::MountOperationPrivate*?
    def initialize(@gio_mount_operation_private : LibGio::MountOperationPrivate*)
    end

    def to_unsafe
      @gio_mount_operation_private.not_nil!
    end

  end
end

