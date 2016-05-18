module Gio
  module DBusObject
    def interface(interface_name)
      __return_value = LibGio.d_bus_object_get_interface(to_unsafe.as(LibGio::DBusObject*), interface_name)
      __return_value
    end

    def interfaces
      __return_value = LibGio.d_bus_object_get_interfaces(to_unsafe.as(LibGio::DBusObject*))
      __return_value
    end

    def object_path
      __return_value = LibGio.d_bus_object_get_object_path(to_unsafe.as(LibGio::DBusObject*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    alias InterfaceAddedSignal = DBusObject, Gio::DBusInterface -> 
    def on_interface_added(&__block : InterfaceAddedSignal)
      __callback = ->(_arg0 : LibGio::DBusObject*, _arg1 : LibGio::LibGio::DBusInterface*) {
       __return_value = __block.call(DBusObject.new(_arg0), _arg1)
       __return_value
      }
      connect("interface-added", __callback)
    end

    alias InterfaceRemovedSignal = DBusObject, Gio::DBusInterface -> 
    def on_interface_removed(&__block : InterfaceRemovedSignal)
      __callback = ->(_arg0 : LibGio::DBusObject*, _arg1 : LibGio::LibGio::DBusInterface*) {
       __return_value = __block.call(DBusObject.new(_arg0), _arg1)
       __return_value
      }
      connect("interface-removed", __callback)
    end

  end
end

