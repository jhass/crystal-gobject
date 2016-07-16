module Gio
  class SocketClientPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::SocketClientPrivate*))
    end

    @gio_socket_client_private : LibGio::SocketClientPrivate*?
    def initialize(@gio_socket_client_private : LibGio::SocketClientPrivate*)
    end

    def to_unsafe
      @gio_socket_client_private.not_nil!
    end

  end
end

