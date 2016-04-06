module Gio
  class PermissionPrivate
    include GObject::WrappedType

    def initialize(@gio_permission_private)
    end

    def to_unsafe
      @gio_permission_private.not_nil!
    end

  end
end

