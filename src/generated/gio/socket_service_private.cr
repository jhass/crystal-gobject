module Gio
  class SocketServicePrivate
    include GObject::WrappedType

    def initialize(@gio_socket_service_private)
    end

    def to_unsafe
      @gio_socket_service_private.not_nil!
    end

  end
end

