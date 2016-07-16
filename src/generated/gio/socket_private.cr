module Gio
  class SocketPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::SocketPrivate*))
    end

    @gio_socket_private : LibGio::SocketPrivate*?
    def initialize(@gio_socket_private : LibGio::SocketPrivate*)
    end

    def to_unsafe
      @gio_socket_private.not_nil!.as(Void*)
    end

  end
end

