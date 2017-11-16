module Gio
  class MountOperationPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::MountOperationPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::MountOperationPrivate*)
    end

  end
end

