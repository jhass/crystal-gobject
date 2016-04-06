module Gio
  class SocketListenerPrivate
    include GObject::WrappedType

    def initialize(@gio_socket_listener_private)
    end

    def to_unsafe
      @gio_socket_listener_private.not_nil!
    end

  end
end

