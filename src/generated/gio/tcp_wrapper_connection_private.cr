module Gio
  class TcpWrapperConnectionPrivate
    include GObject::WrappedType

    @gio_tcp_wrapper_connection_private : LibGio::TcpWrapperConnectionPrivate*?
    def initialize(@gio_tcp_wrapper_connection_private : LibGio::TcpWrapperConnectionPrivate*)
    end

    def to_unsafe
      @gio_tcp_wrapper_connection_private.not_nil!.as(Void*)
    end

  end
end

