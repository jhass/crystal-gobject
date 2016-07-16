module Gio
  class SocketConnectionPrivate
    include GObject::WrappedType

    @gio_socket_connection_private : LibGio::SocketConnectionPrivate*?
    def initialize(@gio_socket_connection_private : LibGio::SocketConnectionPrivate*)
    end

    def to_unsafe
      @gio_socket_connection_private.not_nil!.as(Void*)
    end

  end
end

