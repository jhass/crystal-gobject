module Gio
  class PermissionPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::PermissionPrivate*))
    end

    @gio_permission_private : LibGio::PermissionPrivate*?
    def initialize(@gio_permission_private : LibGio::PermissionPrivate*)
    end

    def to_unsafe
      @gio_permission_private.not_nil!
    end

  end
end

