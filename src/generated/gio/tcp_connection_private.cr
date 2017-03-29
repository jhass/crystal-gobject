module Gio
  class TcpConnectionPrivate
    include GObject::WrappedType

    @gio_tcp_connection_private : LibGio::TcpConnectionPrivate*?
    def initialize(@gio_tcp_connection_private : LibGio::TcpConnectionPrivate*)
    end

    def to_unsafe
      @gio_tcp_connection_private.not_nil!
    end

  end
end

