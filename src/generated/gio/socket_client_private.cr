module Gio
  class SocketClientPrivate
    include GObject::WrappedType

    def initialize(@gio_socket_client_private)
    end

    def to_unsafe
      @gio_socket_client_private.not_nil!
    end

  end
end

