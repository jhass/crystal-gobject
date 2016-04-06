require "./tcp_connection"

module Gio
  class TcpWrapperConnection < TcpConnection
    def initialize(@gio_tcp_wrapper_connection)
    end

    def to_unsafe
      @gio_tcp_wrapper_connection.not_nil!
    end


    def self.new_internal(base_io_stream, socket)
      __return_value = LibGio.tcp_wrapper_connection_new((base_io_stream.to_unsafe as LibGio::IOStream*), (socket.to_unsafe as LibGio::Socket*))
      Gio::SocketConnection.new(__return_value)
    end

    def base_io_stream
      __return_value = LibGio.tcp_wrapper_connection_get_base_io_stream((to_unsafe as LibGio::TcpWrapperConnection*))
      Gio::IOStream.new(__return_value)
    end

  end
end

