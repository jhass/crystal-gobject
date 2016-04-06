module Gio
  class MountOperationPrivate
    include GObject::WrappedType

    def initialize(@gio_mount_operation_private)
    end

    def to_unsafe
      @gio_mount_operation_private.not_nil!
    end

  end
end

