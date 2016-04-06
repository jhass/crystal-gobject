module Gio
  class SocketConnectionPrivate
    include GObject::WrappedType

    def initialize(@gio_socket_connection_private)
    end

    def to_unsafe
      @gio_socket_connection_private.not_nil!
    end

  end
end

