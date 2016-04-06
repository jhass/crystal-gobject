module Gtk
  class MountOperationPrivate
    include GObject::WrappedType

    def initialize(@gtk_mount_operation_private)
    end

    def to_unsafe
      @gtk_mount_operation_private.not_nil!
    end

  end
end

