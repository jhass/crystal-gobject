require "./socket_listener"

module Gio
  class SocketService < SocketListener
    @pointer : Void*
    def initialize(pointer : LibGio::SocketService*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::SocketService*)
    end

    def active
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "active", gvalue)
      gvalue.boolean
    end

    def self.new : self
      __return_value = LibGio.socket_service_new
      cast Gio::SocketService.new(__return_value)
    end

    def active?
      __return_value = LibGio.socket_service_is_active(@pointer.as(LibGio::SocketService*))
      __return_value
    end

    def start
      LibGio.socket_service_start(@pointer.as(LibGio::SocketService*))
      nil
    end

    def stop
      LibGio.socket_service_stop(@pointer.as(LibGio::SocketService*))
      nil
    end

    alias IncomingSignal = SocketService, Gio::SocketConnection, GObject::Object -> Bool
    def on_incoming(&__block : IncomingSignal)
      __callback = ->(_arg0 : LibGio::SocketService*, _arg1 : LibGio::SocketConnection**, _arg2 : LibGObject::Object**) {
       __return_value = __block.call(SocketService.new(_arg0), Gio::SocketConnection.new(_arg1), GObject::Object.new(_arg2))
       __return_value
      }
      connect("incoming", __callback)
    end

  end
end

