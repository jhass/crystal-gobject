module Gio
  class DBusObjectManagerServerPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::DBusObjectManagerServerPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::DBusObjectManagerServerPrivate*)
    end

  end
end

