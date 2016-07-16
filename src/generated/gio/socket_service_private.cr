module Gio
  class SocketServicePrivate
    include GObject::WrappedType

    @gio_socket_service_private : LibGio::SocketServicePrivate*?
    def initialize(@gio_socket_service_private : LibGio::SocketServicePrivate*)
    end

    def to_unsafe
      @gio_socket_service_private.not_nil!.as(Void*)
    end

  end
end

