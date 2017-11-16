module Gio
  class SocketListenerPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::SocketListenerPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::SocketListenerPrivate*)
    end

  end
end

