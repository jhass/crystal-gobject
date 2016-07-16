module Gio
  class TcpConnectionPrivate
    include GObject::WrappedType

    def self.new : self
      ptr = Pointer(UInt8).malloc(0, 0)
      super(ptr.as(LibGio::TcpConnectionPrivate*))
    end

    @gio_tcp_connection_private : LibGio::TcpConnectionPrivate*?
    def initialize(@gio_tcp_connection_private : LibGio::TcpConnectionPrivate*)
    end

    def to_unsafe
      @gio_tcp_connection_private.not_nil!
    end

  end
end

