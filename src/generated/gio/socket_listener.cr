module Gio
  class SocketListener < GObject::Object
    def initialize(@gio_socket_listener)
    end

    def to_unsafe
      @gio_socket_listener.not_nil!
    end


    def self.new_internal
      __return_value = LibGio.socket_listener_new
      Gio::SocketListener.new(__return_value)
    end

    def accept(source_object, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_listener_accept((to_unsafe as LibGio::SocketListener*), (source_object.to_unsafe as LibGObject::Object*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      Gio::SocketConnection.new(__return_value)
    end

    def accept_async(cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.socket_listener_accept_async((to_unsafe as LibGio::SocketListener*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def accept_finish(result, source_object)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_listener_accept_finish((to_unsafe as LibGio::SocketListener*), (result.to_unsafe as LibGio::AsyncResult*), (source_object.to_unsafe as LibGObject::Object*), pointerof(__error))
      GLib::Error.assert __error
      Gio::SocketConnection.new(__return_value)
    end

    def accept_socket(source_object, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_listener_accept_socket((to_unsafe as LibGio::SocketListener*), (source_object.to_unsafe as LibGObject::Object*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      Gio::Socket.new(__return_value)
    end

    def accept_socket_async(cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.socket_listener_accept_socket_async((to_unsafe as LibGio::SocketListener*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def accept_socket_finish(result, source_object)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_listener_accept_socket_finish((to_unsafe as LibGio::SocketListener*), (result.to_unsafe as LibGio::AsyncResult*), (source_object.to_unsafe as LibGObject::Object*), pointerof(__error))
      GLib::Error.assert __error
      Gio::Socket.new(__return_value)
    end

    def add_address(address, type, protocol, source_object, effective_address)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_listener_add_address((to_unsafe as LibGio::SocketListener*), (address.to_unsafe as LibGio::SocketAddress*), type, protocol, source_object && (source_object.to_unsafe as LibGObject::Object*), (effective_address.to_unsafe as LibGio::SocketAddress*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def add_any_inet_port(source_object)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_listener_add_any_inet_port((to_unsafe as LibGio::SocketListener*), source_object && (source_object.to_unsafe as LibGObject::Object*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def add_inet_port(port, source_object)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_listener_add_inet_port((to_unsafe as LibGio::SocketListener*), UInt16.new(port), source_object && (source_object.to_unsafe as LibGObject::Object*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def add_socket(socket, source_object)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_listener_add_socket((to_unsafe as LibGio::SocketListener*), (socket.to_unsafe as LibGio::Socket*), source_object && (source_object.to_unsafe as LibGObject::Object*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def close
      __return_value = LibGio.socket_listener_close((to_unsafe as LibGio::SocketListener*))
      __return_value
    end

    def backlog=(listen_backlog)
      __return_value = LibGio.socket_listener_set_backlog((to_unsafe as LibGio::SocketListener*), Int32.new(listen_backlog))
      __return_value
    end

    alias EventSignal = SocketListener, Gio::SocketListenerEvent, Gio::Socket -> 
    def on_event(&__block : EventSignal)
      __callback = ->(_arg0 : LibGio::SocketListener*, _arg1 : LibGio::LibGio::SocketListenerEvent*, _arg2 : LibGio::LibGio::Socket*) {
       __return_value = __block.call(SocketListener.new(_arg0), _arg1, Gio::Socket.new(_arg2))
       __return_value
      }
      connect("event", __callback)
    end

  end
end

