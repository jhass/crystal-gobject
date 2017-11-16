module Gio
  class PermissionPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::PermissionPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::PermissionPrivate*)
    end

  end
end

