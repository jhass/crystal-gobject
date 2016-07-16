module Gio
  class SocketPrivate
    include GObject::WrappedType

    @gio_socket_private : LibGio::SocketPrivate*?
    def initialize(@gio_socket_private : LibGio::SocketPrivate*)
    end

    def to_unsafe
      @gio_socket_private.not_nil!.as(Void*)
    end

  end
end

