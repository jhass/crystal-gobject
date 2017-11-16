module Gio
  class DBusObjectManagerClientPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::DBusObjectManagerClientPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::DBusObjectManagerClientPrivate*)
    end

  end
end

