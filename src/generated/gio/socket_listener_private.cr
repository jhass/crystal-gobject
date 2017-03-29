module Gio
  class SocketListenerPrivate
    include GObject::WrappedType

    @gio_socket_listener_private : LibGio::SocketListenerPrivate*?
    def initialize(@gio_socket_listener_private : LibGio::SocketListenerPrivate*)
    end

    def to_unsafe
      @gio_socket_listener_private.not_nil!
    end

  end
end

