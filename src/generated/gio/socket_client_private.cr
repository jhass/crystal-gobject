module Gio
  class SocketClientPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::SocketClientPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::SocketClientPrivate*)
    end

  end
end

