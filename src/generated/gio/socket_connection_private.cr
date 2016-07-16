module Gio
  class SocketConnectionPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::SocketConnectionPrivate*))
    end

    @gio_socket_connection_private : LibGio::SocketConnectionPrivate*?
    def initialize(@gio_socket_connection_private : LibGio::SocketConnectionPrivate*)
    end

    def to_unsafe
      @gio_socket_connection_private.not_nil!.as(Void*)
    end

  end
end

