require "./socket_listener"

module Gio
  class SocketService < SocketListener
    def initialize(@gio_socket_service)
    end

    def to_unsafe
      @gio_socket_service.not_nil!
    end


    def self.new_internal
      __return_value = LibGio.socket_service_new
      Gio::SocketService.new(__return_value)
    end

    def active?
      __return_value = LibGio.socket_service_is_active((to_unsafe as LibGio::SocketService*))
      __return_value
    end

    def start
      __return_value = LibGio.socket_service_start((to_unsafe as LibGio::SocketService*))
      __return_value
    end

    def stop
      __return_value = LibGio.socket_service_stop((to_unsafe as LibGio::SocketService*))
      __return_value
    end

    alias IncomingSignal = SocketService, Gio::SocketConnection, GObject::Object -> Bool
    def on_incoming(&__block : IncomingSignal)
      __callback = ->(_arg0 : LibGio::SocketService*, _arg1 : LibGio::LibGio::SocketConnection*, _arg2 : LibGio::LibGObject::Object*) {
       __return_value = __block.call(SocketService.new(_arg0), Gio::SocketConnection.new(_arg1), GObject::Object.new(_arg2))
       __return_value
      }
      connect("incoming", __callback)
    end

  end
end

