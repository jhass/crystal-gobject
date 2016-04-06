require "./i_o_stream"

module Gio
  class SocketConnection < IOStream
    def initialize(@gio_socket_connection)
    end

    def to_unsafe
      @gio_socket_connection.not_nil!
    end


    def self.factory_lookup_type(family, type, protocol_id)
      __return_value = LibGio.socket_connection_factory_lookup_type(family, type, Int32.new(protocol_id))
      __return_value
    end

    def self.factory_register_type(g_type, family, type, protocol)
      __return_value = LibGio.socket_connection_factory_register_type(UInt64.new(g_type), family, type, Int32.new(protocol))
      __return_value
    end

    def connect(address, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_connection_connect((to_unsafe as LibGio::SocketConnection*), (address.to_unsafe as LibGio::SocketAddress*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def connect_async(address, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.socket_connection_connect_async((to_unsafe as LibGio::SocketConnection*), (address.to_unsafe as LibGio::SocketAddress*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def connect_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_connection_connect_finish((to_unsafe as LibGio::SocketConnection*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def local_address
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_connection_get_local_address((to_unsafe as LibGio::SocketConnection*), pointerof(__error))
      GLib::Error.assert __error
      Gio::SocketAddress.new(__return_value)
    end

    def remote_address
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_connection_get_remote_address((to_unsafe as LibGio::SocketConnection*), pointerof(__error))
      GLib::Error.assert __error
      Gio::SocketAddress.new(__return_value)
    end

    def socket
      __return_value = LibGio.socket_connection_get_socket((to_unsafe as LibGio::SocketConnection*))
      Gio::Socket.new(__return_value)
    end

    def connected?
      __return_value = LibGio.socket_connection_is_connected((to_unsafe as LibGio::SocketConnection*))
      __return_value
    end

  end
end

