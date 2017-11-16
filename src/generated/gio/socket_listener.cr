module Gio
  class SocketListener < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::SocketListener*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::SocketListener*)
    end

    def listen_backlog
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "listen_backlog", gvalue)
      gvalue
    end

    def self.new : self
      __return_value = LibGio.socket_listener_new
      cast Gio::SocketListener.new(__return_value)
    end

    def accept(source_object, cancellable) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_listener_accept(@pointer.as(LibGio::SocketListener*), source_object, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      Gio::SocketConnection.new(__return_value)
    end

    def accept_async(cancellable, callback, user_data)
      LibGio.socket_listener_accept_async(@pointer.as(LibGio::SocketListener*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def accept_finish(result, source_object) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_listener_accept_finish(@pointer.as(LibGio::SocketListener*), result.to_unsafe.as(LibGio::AsyncResult*), source_object, pointerof(__error))
      GLib::Error.assert __error
      Gio::SocketConnection.new(__return_value)
    end

    def accept_socket(source_object, cancellable) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_listener_accept_socket(@pointer.as(LibGio::SocketListener*), source_object, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      Gio::Socket.new(__return_value)
    end

    def accept_socket_async(cancellable, callback, user_data)
      LibGio.socket_listener_accept_socket_async(@pointer.as(LibGio::SocketListener*), cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, callback ? callback : nil, user_data ? user_data : nil)
      nil
    end

    def accept_socket_finish(result, source_object) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_listener_accept_socket_finish(@pointer.as(LibGio::SocketListener*), result.to_unsafe.as(LibGio::AsyncResult*), source_object, pointerof(__error))
      GLib::Error.assert __error
      Gio::Socket.new(__return_value)
    end

    def add_address(address, type : Gio::SocketType, protocol : Gio::SocketProtocol, source_object, effective_address) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_listener_add_address(@pointer.as(LibGio::SocketListener*), address.to_unsafe.as(LibGio::SocketAddress*), type, protocol, source_object ? source_object.to_unsafe.as(LibGObject::Object*) : nil, effective_address, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def add_any_inet_port(source_object) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_listener_add_any_inet_port(@pointer.as(LibGio::SocketListener*), source_object ? source_object.to_unsafe.as(LibGObject::Object*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def add_inet_port(port, source_object) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_listener_add_inet_port(@pointer.as(LibGio::SocketListener*), UInt16.new(port), source_object ? source_object.to_unsafe.as(LibGObject::Object*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def add_socket(socket, source_object) # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_listener_add_socket(@pointer.as(LibGio::SocketListener*), socket.to_unsafe.as(LibGio::Socket*), source_object ? source_object.to_unsafe.as(LibGObject::Object*) : nil, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def close
      LibGio.socket_listener_close(@pointer.as(LibGio::SocketListener*))
      nil
    end

    def backlog=(listen_backlog)
      LibGio.socket_listener_set_backlog(@pointer.as(LibGio::SocketListener*), Int32.new(listen_backlog))
      nil
    end

    alias EventSignal = SocketListener, Gio::SocketListenerEvent, Gio::Socket ->
    def on_event(&__block : EventSignal)
      __callback = ->(_arg0 : LibGio::SocketListener*, _arg1 : LibGio::LibGio::SocketListenerEvent*, _arg2 : LibGio::LibGio::Socket**) {
       __return_value = __block.call(SocketListener.new(_arg0), _arg1, Gio::Socket.new(_arg2))
       __return_value
      }
      connect("event", __callback)
    end

  end
end

