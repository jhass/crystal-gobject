module Gio
  class SocketPrivate
    include GObject::WrappedType

    def initialize(@gio_socket_private)
    end

    def to_unsafe
      @gio_socket_private.not_nil!
    end

  end
end

