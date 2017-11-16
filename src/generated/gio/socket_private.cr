module Gio
  class SocketPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::SocketPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::SocketPrivate*)
    end

  end
end

