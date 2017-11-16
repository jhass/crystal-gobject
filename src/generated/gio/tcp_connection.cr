require "./socket_connection"

module Gio
  class TcpConnection < SocketConnection
    @pointer : Void*
    def initialize(pointer : LibGio::TcpConnection*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::TcpConnection*)
    end

    def graceful_disconnect
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "graceful_disconnect", gvalue)
      gvalue.boolean
    end

    def graceful_disconnect
      __return_value = LibGio.tcp_connection_get_graceful_disconnect(@pointer.as(LibGio::TcpConnection*))
      __return_value
    end

    def graceful_disconnect=(graceful_disconnect)
      LibGio.tcp_connection_set_graceful_disconnect(@pointer.as(LibGio::TcpConnection*), graceful_disconnect)
      nil
    end

  end
end

