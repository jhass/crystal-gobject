module Gio
  class SocketClient < GObject::Object
    def initialize(@gio_socket_client)
    end

    def to_unsafe
      @gio_socket_client.not_nil!
    end










    def self.new_internal
      __return_value = LibGio.socket_client_new
      Gio::SocketClient.new(__return_value)
    end

    def add_application_proxy(protocol)
      __return_value = LibGio.socket_client_add_application_proxy((to_unsafe as LibGio::SocketClient*), protocol)
      __return_value
    end

    def connect(connectable, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_client_connect((to_unsafe as LibGio::SocketClient*), (connectable.to_unsafe as LibGio::SocketConnectable*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      Gio::SocketConnection.new(__return_value)
    end

    def connect_async(connectable, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.socket_client_connect_async((to_unsafe as LibGio::SocketClient*), (connectable.to_unsafe as LibGio::SocketConnectable*), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def connect_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_client_connect_finish((to_unsafe as LibGio::SocketClient*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::SocketConnection.new(__return_value)
    end

    def connect_to_host(host_and_port, default_port, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_client_connect_to_host((to_unsafe as LibGio::SocketClient*), host_and_port, UInt16.new(default_port), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      Gio::SocketConnection.new(__return_value)
    end

    def connect_to_host_async(host_and_port, default_port, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.socket_client_connect_to_host_async((to_unsafe as LibGio::SocketClient*), host_and_port, UInt16.new(default_port), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def connect_to_host_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_client_connect_to_host_finish((to_unsafe as LibGio::SocketClient*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::SocketConnection.new(__return_value)
    end

    def connect_to_service(domain, service, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_client_connect_to_service((to_unsafe as LibGio::SocketClient*), domain, service, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      Gio::SocketConnection.new(__return_value)
    end

    def connect_to_service_async(domain, service, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.socket_client_connect_to_service_async((to_unsafe as LibGio::SocketClient*), domain, service, cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def connect_to_service_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_client_connect_to_service_finish((to_unsafe as LibGio::SocketClient*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::SocketConnection.new(__return_value)
    end

    def connect_to_uri(uri, default_port, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_client_connect_to_uri((to_unsafe as LibGio::SocketClient*), uri, UInt16.new(default_port), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      Gio::SocketConnection.new(__return_value)
    end

    def connect_to_uri_async(uri, default_port, cancellable, callback : LibGio::AsyncReadyCallback?, user_data)
      __return_value = LibGio.socket_client_connect_to_uri_async((to_unsafe as LibGio::SocketClient*), uri, UInt16.new(default_port), cancellable && (cancellable.to_unsafe as LibGio::Cancellable*), callback && callback, user_data)
      __return_value
    end

    def connect_to_uri_finish(result)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.socket_client_connect_to_uri_finish((to_unsafe as LibGio::SocketClient*), (result.to_unsafe as LibGio::AsyncResult*), pointerof(__error))
      GLib::Error.assert __error
      Gio::SocketConnection.new(__return_value)
    end

    def enable_proxy
      __return_value = LibGio.socket_client_get_enable_proxy((to_unsafe as LibGio::SocketClient*))
      __return_value
    end

    def family
      __return_value = LibGio.socket_client_get_family((to_unsafe as LibGio::SocketClient*))
      __return_value
    end

    def local_address
      __return_value = LibGio.socket_client_get_local_address((to_unsafe as LibGio::SocketClient*))
      Gio::SocketAddress.new(__return_value)
    end

    def protocol
      __return_value = LibGio.socket_client_get_protocol((to_unsafe as LibGio::SocketClient*))
      __return_value
    end

    def proxy_resolver
      __return_value = LibGio.socket_client_get_proxy_resolver((to_unsafe as LibGio::SocketClient*))
      __return_value
    end

    def socket_type
      __return_value = LibGio.socket_client_get_socket_type((to_unsafe as LibGio::SocketClient*))
      __return_value
    end

    def timeout
      __return_value = LibGio.socket_client_get_timeout((to_unsafe as LibGio::SocketClient*))
      __return_value
    end

    def tls
      __return_value = LibGio.socket_client_get_tls((to_unsafe as LibGio::SocketClient*))
      __return_value
    end

    def tls_validation_flags
      __return_value = LibGio.socket_client_get_tls_validation_flags((to_unsafe as LibGio::SocketClient*))
      __return_value
    end

    def enable_proxy=(enable)
      __return_value = LibGio.socket_client_set_enable_proxy((to_unsafe as LibGio::SocketClient*), enable)
      __return_value
    end

    def family=(family)
      __return_value = LibGio.socket_client_set_family((to_unsafe as LibGio::SocketClient*), family)
      __return_value
    end

    def local_address=(address)
      __return_value = LibGio.socket_client_set_local_address((to_unsafe as LibGio::SocketClient*), address && (address.to_unsafe as LibGio::SocketAddress*))
      __return_value
    end

    def protocol=(protocol)
      __return_value = LibGio.socket_client_set_protocol((to_unsafe as LibGio::SocketClient*), protocol)
      __return_value
    end

    def proxy_resolver=(proxy_resolver)
      __return_value = LibGio.socket_client_set_proxy_resolver((to_unsafe as LibGio::SocketClient*), proxy_resolver && (proxy_resolver.to_unsafe as LibGio::ProxyResolver*))
      __return_value
    end

    def socket_type=(type)
      __return_value = LibGio.socket_client_set_socket_type((to_unsafe as LibGio::SocketClient*), type)
      __return_value
    end

    def timeout=(timeout)
      __return_value = LibGio.socket_client_set_timeout((to_unsafe as LibGio::SocketClient*), UInt32.new(timeout))
      __return_value
    end

    def tls=(tls)
      __return_value = LibGio.socket_client_set_tls((to_unsafe as LibGio::SocketClient*), tls)
      __return_value
    end

    def tls_validation_flags=(flags)
      __return_value = LibGio.socket_client_set_tls_validation_flags((to_unsafe as LibGio::SocketClient*), flags)
      __return_value
    end

    alias EventSignal = SocketClient, Gio::SocketClientEvent, Gio::SocketConnectable, Gio::IOStream -> 
    def on_event(&__block : EventSignal)
      __callback = ->(_arg0 : LibGio::SocketClient*, _arg1 : LibGio::LibGio::SocketClientEvent*, _arg2 : LibGio::LibGio::SocketConnectable*, _arg3 : LibGio::LibGio::IOStream*) {
       __return_value = __block.call(SocketClient.new(_arg0), _arg1, _arg2, Gio::IOStream.new(_arg3))
       __return_value
      }
      connect("event", __callback)
    end

  end
end

