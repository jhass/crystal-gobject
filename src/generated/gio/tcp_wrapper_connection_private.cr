module Gio
  class TcpWrapperConnectionPrivate
    include GObject::WrappedType

    def initialize(@gio_tcp_wrapper_connection_private)
    end

    def to_unsafe
      @gio_tcp_wrapper_connection_private.not_nil!
    end

  end
end

