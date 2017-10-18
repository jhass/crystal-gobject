module Gio
  class DBusServer < GObject::Object
    @gio_d_bus_server : LibGio::DBusServer*?
    def initialize(@gio_d_bus_server : LibGio::DBusServer*)
    end

    def to_unsafe
      @gio_d_bus_server.not_nil!
    end

    # Implements Initable
    def active
      __return_value = LibGio.d_bus_server_get_active(to_unsafe.as(LibGio::DBusServer*))
      __return_value
    end

    def address
      __return_value = LibGio.d_bus_server_get_address(to_unsafe.as(LibGio::DBusServer*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def authentication_observer
      __return_value = LibGio.d_bus_server_get_authentication_observer(to_unsafe.as(LibGio::DBusServer*))
      Gio::DBusAuthObserver.new(__return_value)
    end

    def client_address
      __return_value = LibGio.d_bus_server_get_client_address(to_unsafe.as(LibGio::DBusServer*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def flags
      __return_value = LibGio.d_bus_server_get_flags(to_unsafe.as(LibGio::DBusServer*))
      __return_value
    end

    def guid
      __return_value = LibGio.d_bus_server_get_guid(to_unsafe.as(LibGio::DBusServer*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.new_sync(address, flags : Gio::DBusServerFlags, guid, observer, cancellable) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_server_new_sync(address.to_unsafe, flags, guid.to_unsafe, observer ? observer.to_unsafe.as(LibGio::DBusAuthObserver*) : nil, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      cast Gio::DBusServer.new(__return_value)
    end

    def client_address
      __return_value = LibGio.d_bus_server_get_client_address(to_unsafe.as(LibGio::DBusServer*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def flags
      __return_value = LibGio.d_bus_server_get_flags(to_unsafe.as(LibGio::DBusServer*))
      __return_value
    end

    def guid
      __return_value = LibGio.d_bus_server_get_guid(to_unsafe.as(LibGio::DBusServer*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def active?
      __return_value = LibGio.d_bus_server_is_active(to_unsafe.as(LibGio::DBusServer*))
      __return_value
    end

    def start
      LibGio.d_bus_server_start(to_unsafe.as(LibGio::DBusServer*))
      nil
    end

    def stop
      LibGio.d_bus_server_stop(to_unsafe.as(LibGio::DBusServer*))
      nil
    end

    alias NewConnectionSignal = DBusServer, Gio::DBusConnection -> Bool
    def on_new_connection(&__block : NewConnectionSignal)
      __callback = ->(_arg0 : LibGio::DBusServer*, _arg1 : LibGio::LibGio::DBusConnection*) {
       __return_value = __block.call(DBusServer.new(_arg0), Gio::DBusConnection.new(_arg1))
       __return_value
      }
      connect("new-connection", __callback)
    end

  end
end

