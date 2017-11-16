require "./tcp_connection"

module Gio
  class TcpWrapperConnection < TcpConnection
    @pointer : Void*
    def initialize(pointer : LibGio::TcpWrapperConnection*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::TcpWrapperConnection*)
    end

    def base_io_stream
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "base_io_stream", gvalue)
      Gio::IOStream.cast(gvalue.object)
    end

    def self.new(base_io_stream, socket) : self
      __return_value = LibGio.tcp_wrapper_connection_new(base_io_stream.to_unsafe.as(LibGio::IOStream*), socket.to_unsafe.as(LibGio::Socket*))
      cast Gio::SocketConnection.new(__return_value)
    end

    def base_io_stream
      __return_value = LibGio.tcp_wrapper_connection_get_base_io_stream(@pointer.as(LibGio::TcpWrapperConnection*))
      Gio::IOStream.new(__return_value)
    end

  end
end

