module Gio
  class DBusServer < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::DBusServer*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::DBusServer*)
    end

    # Implements Initable
    def active
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "active", gvalue)
      gvalue.boolean
    end

    def address
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "address", gvalue)
      gvalue.string
    end

    def authentication_observer
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "authentication_observer", gvalue)
      Gio::DBusAuthObserver.cast(gvalue.object)
    end

    def client_address
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "client_address", gvalue)
      gvalue.string
    end

    def flags
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "flags", gvalue)
      gvalue.enum
    end

    def guid
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "guid", gvalue)
      gvalue.string
    end

    def self.new_sync(address, flags : Gio::DBusServerFlags, guid, observer, cancellable) : self # function
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.d_bus_server_new_sync(address.to_unsafe, flags, guid.to_unsafe, observer ? observer.to_unsafe.as(LibGio::DBusAuthObserver*) : nil, cancellable ? cancellable.to_unsafe.as(LibGio::Cancellable*) : nil, pointerof(__error))
      GLib::Error.assert __error
      cast Gio::DBusServer.new(__return_value)
    end

    def client_address
      __return_value = LibGio.d_bus_server_get_client_address(@pointer.as(LibGio::DBusServer*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def flags
      __return_value = LibGio.d_bus_server_get_flags(@pointer.as(LibGio::DBusServer*))
      __return_value
    end

    def guid
      __return_value = LibGio.d_bus_server_get_guid(@pointer.as(LibGio::DBusServer*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def active?
      __return_value = LibGio.d_bus_server_is_active(@pointer.as(LibGio::DBusServer*))
      __return_value
    end

    def start
      LibGio.d_bus_server_start(@pointer.as(LibGio::DBusServer*))
      nil
    end

    def stop
      LibGio.d_bus_server_stop(@pointer.as(LibGio::DBusServer*))
      nil
    end

    alias NewConnectionSignal = DBusServer, Gio::DBusConnection -> Bool
    def on_new_connection(&__block : NewConnectionSignal)
      __callback = ->(_arg0 : LibGio::DBusServer*, _arg1 : LibGio::LibGio::DBusConnection**) {
       __return_value = __block.call(DBusServer.new(_arg0), Gio::DBusConnection.new(_arg1))
       __return_value
      }
      connect("new-connection", __callback)
    end

  end
end

