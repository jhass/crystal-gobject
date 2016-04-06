require "./socket_service"

module Gio
  class ThreadedSocketService < SocketService
    def initialize(@gio_threaded_socket_service)
    end

    def to_unsafe
      @gio_threaded_socket_service.not_nil!
    end


    def self.new_internal(max_threads)
      __return_value = LibGio.threaded_socket_service_new(Int32.new(max_threads))
      Gio::SocketService.new(__return_value)
    end

    alias RunSignal = ThreadedSocketService, Gio::SocketConnection, GObject::Object -> Bool
    def on_run(&__block : RunSignal)
      __callback = ->(_arg0 : LibGio::ThreadedSocketService*, _arg1 : LibGio::LibGio::SocketConnection*, _arg2 : LibGio::LibGObject::Object*) {
       __return_value = __block.call(ThreadedSocketService.new(_arg0), Gio::SocketConnection.new(_arg1), GObject::Object.new(_arg2))
       __return_value
      }
      connect("run", __callback)
    end

  end
end

