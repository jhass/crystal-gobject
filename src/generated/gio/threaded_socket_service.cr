require "./socket_service"

module Gio
  class ThreadedSocketService < SocketService
    @pointer : Void*
    def initialize(pointer : LibGio::ThreadedSocketService*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::ThreadedSocketService*)
    end

    def max_threads
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "max_threads", gvalue)
      gvalue
    end

    def self.new(max_threads) : self
      __return_value = LibGio.threaded_socket_service_new(Int32.new(max_threads))
      cast Gio::SocketService.new(__return_value)
    end

    alias RunSignal = ThreadedSocketService, Gio::SocketConnection, GObject::Object -> Bool
    def on_run(&__block : RunSignal)
      __callback = ->(_arg0 : LibGio::ThreadedSocketService*, _arg1 : LibGio::LibGio::SocketConnection**, _arg2 : LibGio::LibGObject::Object**) {
       __return_value = __block.call(ThreadedSocketService.new(_arg0), Gio::SocketConnection.new(_arg1), GObject::Object.new(_arg2))
       __return_value
      }
      connect("run", __callback)
    end

  end
end

