module Gio
  class SocketClientPrivate
    include GObject::WrappedType

    @gio_socket_client_private : LibGio::SocketClientPrivate*?
    def initialize(@gio_socket_client_private : LibGio::SocketClientPrivate*)
    end

    def to_unsafe
      @gio_socket_client_private.not_nil!
    end

  end
end

