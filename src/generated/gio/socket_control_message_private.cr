module Gio
  class SocketControlMessagePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGio::SocketControlMessagePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::SocketControlMessagePrivate*)
    end

  end
end

