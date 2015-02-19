require "./socket_listener"

module Gio
  class SocketService < SocketListener
    def initialize @gio_socket_service
    end

    def to_unsafe
      @gio_socket_service.not_nil!
    end

    def self.new_internal
      __return_value = LibGio.socket_service_new
      Gio::SocketService.new(__return_value)
    end

    def is_active
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

  end
end

