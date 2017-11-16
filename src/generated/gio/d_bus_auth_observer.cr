module Gio
  class DBusAuthObserver < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::DBusAuthObserver*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::DBusAuthObserver*)
    end

    def self.new : self
      __return_value = LibGio.d_bus_auth_observer_new
      cast Gio::DBusAuthObserver.new(__return_value)
    end

    def allow_mechanism(mechanism)
      __return_value = LibGio.d_bus_auth_observer_allow_mechanism(@pointer.as(LibGio::DBusAuthObserver*), mechanism.to_unsafe)
      __return_value
    end

    def authorize_authenticated_peer(stream, credentials)
      __return_value = LibGio.d_bus_auth_observer_authorize_authenticated_peer(@pointer.as(LibGio::DBusAuthObserver*), stream.to_unsafe.as(LibGio::IOStream*), credentials ? credentials.to_unsafe.as(LibGio::Credentials*) : nil)
      __return_value
    end

    alias AllowMechanismSignal = DBusAuthObserver, String -> Bool
    def on_allow_mechanism(&__block : AllowMechanismSignal)
      __callback = ->(_arg0 : LibGio::DBusAuthObserver*, _arg1 : LibGio::UInt8**) {
       __return_value = __block.call(DBusAuthObserver.new(_arg0), (raise "Expected string but got null" unless _arg1; ::String.new(_arg1)))
       __return_value
      }
      connect("allow-mechanism", __callback)
    end

    alias AuthorizeAuthenticatedPeerSignal = DBusAuthObserver, Gio::IOStream, Gio::Credentials -> Bool
    def on_authorize_authenticated_peer(&__block : AuthorizeAuthenticatedPeerSignal)
      __callback = ->(_arg0 : LibGio::DBusAuthObserver*, _arg1 : LibGio::LibGio::IOStream*, _arg2 : LibGio::LibGio::Credentials*) {
       __return_value = __block.call(DBusAuthObserver.new(_arg0), Gio::IOStream.new(_arg1), Gio::Credentials.new(_arg2))
       __return_value
      }
      connect("authorize-authenticated-peer", __callback)
    end

  end
end

