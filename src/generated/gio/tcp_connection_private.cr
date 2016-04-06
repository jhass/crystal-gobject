module Gio
  class TcpConnectionPrivate
    include GObject::WrappedType

    def initialize(@gio_tcp_connection_private)
    end

    def to_unsafe
      @gio_tcp_connection_private.not_nil!
    end

  end
end

