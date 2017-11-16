module Gio
  class SocketServicePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::SocketServicePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::SocketServicePrivate*)
    end

  end
end

