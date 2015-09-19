require "./socket_service"

module Gio
  class ThreadedSocketService < SocketService
    def initialize @gio_threaded_socket_service
    end

    def to_unsafe
      @gio_threaded_socket_service.not_nil!
    end


    def self.new_internal(max_threads)
      __return_value = LibGio.threaded_socket_service_new(Int32.new(max_threads))
      Gio::SocketService.new(__return_value)
    end

  end
end

