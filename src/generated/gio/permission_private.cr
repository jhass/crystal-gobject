module Gio
  class PermissionPrivate
    include GObject::WrappedType

    @gio_permission_private : LibGio::PermissionPrivate*?
    def initialize(@gio_permission_private : LibGio::PermissionPrivate*)
    end

    def to_unsafe
      @gio_permission_private.not_nil!
    end

  end
end

