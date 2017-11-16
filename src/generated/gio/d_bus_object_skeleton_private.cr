module Gio
  class DBusObjectSkeletonPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::DBusObjectSkeletonPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::DBusObjectSkeletonPrivate*)
    end

  end
end

