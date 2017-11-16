module Gio
  module DBusObjectManager
    def interface(object_path, interface_name)
      __return_value = LibGio.d_bus_object_manager_get_interface(@pointer.as(LibGio::DBusObjectManager*), object_path.to_unsafe, interface_name.to_unsafe)
      __return_value
    end

    def object(object_path)
      __return_value = LibGio.d_bus_object_manager_get_object(@pointer.as(LibGio::DBusObjectManager*), object_path.to_unsafe)
      __return_value
    end

    def object_path
      __return_value = LibGio.d_bus_object_manager_get_object_path(@pointer.as(LibGio::DBusObjectManager*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def objects
      __return_value = LibGio.d_bus_object_manager_get_objects(@pointer.as(LibGio::DBusObjectManager*))
      GLib::ListIterator(Gio::DBusObject, LibGio::DBusObject*).new(GLib::SList.new(__return_value.as(LibGLib::List*)))
    end

    alias InterfaceAddedSignal = DBusObjectManager, Gio::DBusObject, Gio::DBusInterface ->
    def on_interface_added(&__block : InterfaceAddedSignal)
      __callback = ->(_arg0 : LibGio::DBusObjectManager*, _arg1 : LibGio::LibGio::DBusObject*, _arg2 : LibGio::LibGio::DBusInterface*) {
       __return_value = __block.call(DBusObjectManager.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("interface-added", __callback)
    end

    alias InterfaceRemovedSignal = DBusObjectManager, Gio::DBusObject, Gio::DBusInterface ->
    def on_interface_removed(&__block : InterfaceRemovedSignal)
      __callback = ->(_arg0 : LibGio::DBusObjectManager*, _arg1 : LibGio::LibGio::DBusObject*, _arg2 : LibGio::LibGio::DBusInterface*) {
       __return_value = __block.call(DBusObjectManager.new(_arg0), _arg1, _arg2)
       __return_value
      }
      connect("interface-removed", __callback)
    end

    alias ObjectAddedSignal = DBusObjectManager, Gio::DBusObject ->
    def on_object_added(&__block : ObjectAddedSignal)
      __callback = ->(_arg0 : LibGio::DBusObjectManager*, _arg1 : LibGio::LibGio::DBusObject*) {
       __return_value = __block.call(DBusObjectManager.new(_arg0), _arg1)
       __return_value
      }
      connect("object-added", __callback)
    end

    alias ObjectRemovedSignal = DBusObjectManager, Gio::DBusObject ->
    def on_object_removed(&__block : ObjectRemovedSignal)
      __callback = ->(_arg0 : LibGio::DBusObjectManager*, _arg1 : LibGio::LibGio::DBusObject*) {
       __return_value = __block.call(DBusObjectManager.new(_arg0), _arg1)
       __return_value
      }
      connect("object-removed", __callback)
    end

  end
end

