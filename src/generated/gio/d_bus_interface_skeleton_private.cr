module Gio
  class DBusInterfaceSkeletonPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::DBusInterfaceSkeletonPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::DBusInterfaceSkeletonPrivate*)
    end

  end
end

