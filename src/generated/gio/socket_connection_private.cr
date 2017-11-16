module Gio
  class SocketConnectionPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::SocketConnectionPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::SocketConnectionPrivate*)
    end

  end
end

